# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"

# Mainteiner notes:
# - This ebuild uses Bundler to download and install all gems in deployment mode
#   (i.e. into isolated directory inside application). That's not Gentoo way how
#   it should be done, but GitLab has too many dependencies that it will be too
#   difficult to maintain them via ebuilds.

USE_RUBY="ruby21"
PYTHON_COMPAT=( python{2_7,3_3,3_4,3_5} )

inherit eutils python ruby-ng versionator user

DESCRIPTION="GitLab is a free project and repository management application"
HOMEPAGE="https://github.com/gitlabhq/gitlabhq/"
SRC_URI="https://github.com/gitlabhq/gitlabhq/archive/v${PV}.zip"

LICENSE="MIT"
SLOT=$(get_version_component_range 1-2)
KEYWORDS="~amd64 ~x86 ~arm"
IUSE="memcached mysql +postgres +unicorn"

## Gems dependencies:
#   charlock_holmes		dev-libs/icu
#	  grape, capybara		dev-libs/libxml2, dev-libs/libxslt
#   json							dev-util/ragel
#   yajl-ruby					dev-libs/yajl
#   pygments.rb				python 2.5+
#   execjs						net-libs/nodejs, or any other JS runtime
#   pg								dev-db/postgresql-base
#   mysql							virtual/mysql
#	  rugged						net-libs/http-parser dev-libs/libgit2
#
GEMS_DEPEND="
	dev-libs/icu
	dev-libs/libxml2
	dev-libs/libxslt
	dev-util/ragel
	dev-libs/yajl
	net-libs/nodejs
	postgres? ( dev-db/postgresql )
	mysql? ( virtual/mysql )
	memcached? ( net-misc/memcached )
	net-libs/http-parser
	>=dev-libs/libgit2-0.22.3" # rugged-0.22.2 needs libgit2-0.22
DEPEND="${GEMS_DEPEND}
	>=dev-lang/ruby-2.0[readline,ssl]
	>dev-vcs/git-2.2.1
	>=dev-vcs/gitlab-shell-2.6.5
	>=www-servers/gitlab-workhorse-0.4.0
	net-misc/curl
	virtual/ssh"
RDEPEND="${DEPEND}
	>=dev-db/redis-2.4.0
	virtual/mta
	virtual/krb5"
ruby_add_bdepend "
	virtual/rubygems
	>=dev-ruby/bundler-1.0"

#RUBY_PATCHES=(
#	"${P}-fix-checks-gentoo.patch"
#)

GIT_USER="git"
GIT_GROUP="git"
GIT_HOME=$(getent passwd $GIT_USER  | cut -d: -f6)
DEST_DIR="/opt/${PN}-${SLOT}"
CONF_DIR="/etc/${PN}-${SLOT}"

GIT_REPOS="${GIT_HOME}/repositories"
GIT_SATELLITES="${GIT_HOME}/gitlab-satellites"
GITLAB_SHELL="/var/lib/gitlab-shell"
GITLAB_SHELL_HOOKS="${GITLAB_SHELL}/hooks"

RAILS_ENV=${RAILS_ENV:-production}
RUBY=${RUBY:-ruby21}
BUNDLE="${RUBY} /usr/bin/bundle"

each_ruby_prepare() {

	# fix path to repo and gitlab-shell hooks
	test -d "${GITLAB_SHELL_HOOKS}" || die "Gitlab Shell hooks directory not found: \"${GITLAB_SHELL_HOOKS}. Have you properly installed dev-vcs/gitlab-shell"?

	sed -i \
		-e "s|\(\s*path:\s\)/.*/gitlab-shell/|\1 ${GITLAB_SHELL}/|" \
		-e "s|\(\s*repos_path:\s\)/.*|\1 ${GIT_REPOS}/|" \
		-e "s|\(\s*hooks_path:\s\)/.*|\1 ${GITLAB_SHELL_HOOKS}/|" \
		-e "s|\(\s*path:\s\)/.*/gitlab-satellites/|\1 ${GIT_SATELLITES}/|" \
		-e "s|\(\s*GITLAB_SHELL:\s*\)|\1\n\tpath: \"${GITLAB_SHELL}\"|" \
		config/gitlab.yml.example || die "failed to filter gitlab.yml.example"

	# modify database settings
	sed -i \
		-e 's|\(username:\) postgres.*|\1 gitlab|' \
		-e 's|\(password:\).*|\1 gitlab|' \
		-e 's|\(socket:\).*|/run/postgresql/.s.PGSQL.5432|' \
		config/database.yml.postgresql \
		|| die "failed to filter database.yml.postgresql"

	# replace "secret" token with random one
	local randpw=$(echo ${RANDOM}|sha512sum|cut -c 1-128)
	sed -i -e "/secret_token =/ s/=.*/= '${randpw}'/" \
		config/initializers/secret_token.rb \
		|| die "failed to filter secret_token.rb"

	# remove needless files
	rm .foreman .gitignore Procfile
	use unicorn || rm config/unicorn.rb.example
	use postgres || rm config/database.yml.postgresql
	use mysql || rm config/database.yml.mysql

	# change cache_store
	if use memcached; then
		sed -i \
			-e "/\w*config.cache_store / s/=.*/= :dalli_store, { namespace: 'gitlab' }/" \
			config/environments/production.rb \
			|| die "failed to modify production.rb"
	fi

	# Update pathes for unicorn
	if use unicorn; then
		sed -i \
			-e "s#/home/git/gitlab#${DEST_DIR}#" \
			config/unicorn.rb.example \
			|| die "failed to modify unicorn.rb.example"
	fi
}

each_ruby_install() {
	local dest="${DEST_DIR}"
	local conf="/etc/${PN}-${SLOT}"
	local temp="/var/tmp/${PN}-${SLOT}"
	local logs="/var/log/${PN}-${SLOT}"
	local uploads="${DEST_DIR}/public/uploads"

	## Prepare directories ##

	diropts -m750
	keepdir "${logs}"
	dodir "${temp}"

	diropts -m755
	keepdir "${conf}"
	dodir "${dest}"
	dodir "${uploads}"

	dosym "${temp}" "${dest}/tmp"
	dosym "${logs}" "${dest}/log"

	## Link gitlab-shell into git home
	dosym "${GITLAB_SHELL}" "${GIT_HOME}/gitlab-shell"

	## Install configs ##

	insinto "${conf}"
	doins -r ${S}/config/*
	dosym "${conf}" "${dest}/config"

	insinto "${dest}/.ssh"
	newins "${FILESDIR}/config.ssh" config

	echo "export RAILS_ENV=production" > "${D}/${dest}/.profile"

	## Install all others ##

	# remove needless dirs
	rm -Rf config tmp log

	insinto "${dest}"
	doins -r ./

	## Install logrotate config ##

	dodir /etc/logrotate.d
	sed -e "s|@LOG_DIR@|${logs}|" \
		"${FILESDIR}"/gitlab.logrotate > "${D}"/etc/logrotate.d/${PN}-${SLOT} \
		|| die "failed to filter gitlab.logrotate"

	## Install gems via bundler ##

	cd "${D}/${dest}"

	local without="development test thin"
	local flag; for flag in memcached mysql postgres unicorn; do
		without+="$(use $flag || echo ' '$flag)"
	done
	local bundle_args="--deployment ${without:+--without ${without}}"

	# Use systemlibs for rugged
	${BUNDLE} config build.rugged --use-system-libraries

	# Use systemlibs for nokogiri as suggested
	${BUNDLE} config build.nokogiri --use-system-libraries

	# Fix invalid ldflags for charlock_holmes,
	# see https://github.com/brianmario/charlock_holmes/issues/32
	${BUNDLE} config build.charlock_holmes --with-ldflags='-L. -Wl,-O1 -Wl,--as-needed -rdynamic -Wl,-export-dynamic -Wl,--no-undefined -lz -licuuc'

	einfo "Running bundle install ${bundle_args} ..."
	${BUNDLE} install ${bundle_args} || die "bundler failed"

	## Clean ##

	local gemsdir=vendor/bundle/ruby/$(ruby_rbconfig_value 'ruby_version')

	# remove gems cache
	rm -Rf ${gemsdir}/cache

	# fix permissions
	fowners -R ${GIT_USER}:${GIT_GROUP} "${dest}" "${conf}" "${temp}" "${logs}"
	fperms o+Xr "${temp}" # Let nginx access the unicorn socket

	## RC scripts ##
	local rcscript=${P}.init

	cp "${FILESDIR}/${rcscript}" "${T}" || die
	sed -i \
		-e "s|@GIT_USER@|${GIT_USER}|" \
		-e "s|@GIT_GROUP@|${GIT_USER}|" \
		-e "s|@SLOT@|${SLOT}|" \
		-e "s|@DEST_DIR@|${dest}|" \
		-e "s|@LOG_DIR@|${logs}|" \
		-e "s|@RESQUE_QUEUE@|${resque_queue}|" \
		"${T}/${rcscript}" \
		|| die "failed to filter ${rcscript}"

	if use memcached; then
		sed -i -e '/^depend/,// {/need / s/$/ memcached/}' \
		"${T}/${rcscript}" || die "failed to filter ${rcscript}"
	fi

	newinitd "${T}/${rcscript}" "${PN}-${SLOT}"
}

pkg_preinst() {
	diropts -m "0750" -o "${GIT_USER}" -g "${GIT_GROUP}"
	dodir "${GIT_SATELLITES}"
}

pkg_postinst() {
	if [ ! -e "${GIT_HOME}/.ssh/id_rsa" ]; then
		einfo "Generating SSH key for git user"
		su -l ${GIT_USER} -s /bin/sh -c "
			ssh-keygen -q -N '' -t rsa -f ${GIT_HOME}/.ssh/id_rsa" \
			|| die "failed to generate SSH key"
	fi
	if [ ! -e "${GIT_HOME}/.gitconfig" ]; then
		einfo "Setting git user in ${GIT_HOME}/.gitconfig, feel free to "
		einfo "modify this file according to your needs!"
		su -l ${GIT_USER} -s /bin/sh -c "
			git config --global core.autocrlf 'input';
			git config --global user.email 'gitlab@localhost';
			git config --global user.name 'GitLab'" \
			|| die "failed to setup git name and email"
	fi

	elog "If this is a new installation, proceed with the following steps:"
	elog
	elog "  1. Copy ${CONF_DIR}/gitlab.yml.example to ${CONF_DIR}/gitlab.yml"
	elog "     and edit this file in order to configure your GitLab settings."
	elog
	elog "  2. Copy ${CONF_DIR}/database.yml.* to ${CONF_DIR}/database.yml"
	elog "     and edit this file in order to configure your database settings"
	elog "     for \"production\" environment."
	elog
	elog "  3. Copy ${CONF_DIR}/initializers/rack_attack.rb.example"
	elog "     to ${CONF_DIR}/initializers/rack_attack.rb"
	elog
	elog "  4. Copy ${CONF_DIR}/resque.yml.example to ${CONF_DIR}/resque.yml"
	elog "     and edit this file in order to configure your Redis settings"
	elog "     for \"production\" environment."
	elog

	if use unicorn; then
		elog "  4a. Copy ${CONF_DIR}/unicorn.rb.example to ${CONF_DIR}/unicorn.rb"
		elog
	fi

	elog "  5. If this is a new installation, create a database for your GitLab instance."
	if use postgres; then
		elog "    If you have local PostgreSQL running, just copy&run:"
		elog "        su postgres"
		elog "        psql -c \"CREATE ROLE gitlab PASSWORD 'gitlab' \\"
		elog "            NOSUPERUSER NOCREATEDB NOCREATEROLE INHERIT LOGIN;\""
		elog "        createdb -E UTF-8 -O gitlab gitlab_production"
		elog "    Note: You should change your password to something more random..."
		elog
		elog "    GitLab uses polymorphic associations which are not SQL-standard friendly."
		elog "    To get it work you must use this ugly workaround:"
		elog "        psql -U postgres -d gitlab"
		elog "        CREATE CAST (integer AS text) WITH INOUT AS IMPLICIT;"
		elog
	fi
	elog "  6. Execute the following command to finalize your setup:"
	elog "         emerge --config \"=${CATEGORY}/${PF}\""
	elog "     Note: Do not forget to start Redis server."
	elog
	elog "To update an existing instance, run the following command and choose upgrading when prompted:"
	elog "    emerge --config \"=${CATEGORY}/${PF}\""
	elog
	elog "Important: Do not remove the earlier version prior migration!"
}

pkg_config() {

	# Ask user whether this is the first installation
	einfo "Do you want to upgrade an existing installation? [Y|n] "
	do_upgrade=""
	while true
	do
		read -r do_upgrade
		if [[ $do_upgrade == "n" || $do_upgrade == "N" ]] ; then do_upgrade="" && break
		elif [[ $do_upgrade == "y" || $do_upgrade == "Y" || $do_upgrade == "" ]] ; then do_upgrade=1 && break
		else eerrorn "Please type either \"Y\" or \"N\" ... " ; fi
	done

	if [[ $do_upgrade ]] ; then

		LATEST_DEST=$(test -n "${LATEST_DEST}" && echo ${LATEST_DEST} || \
			find /opt -maxdepth 1 -iname 'gitlabhq-*' -and -type d -and -not -iname "gitlabhq-${SLOT}" | \
			sort -r | head -n1)

		if [[ -z "${LATEST_DEST}" || ! -d "${LATEST_DEST}" ]] ; then
			einfo "Please enter the path to your latest Gitlab instance:"
			while true
			do
				read -r LATEST_DEST
				test -d ${LATEST_DEST} && break ||\
					eerror "Please specify a valid path to your Gitlab instance!"
			done
		else
			einfo "Found your latest Gitlab instance at \"${LATEST_DEST}\"."
		fi

		einfo "Please make sure that you've stopped your running Gitlab instance and that you've created a backup: "
		elog "\$ cd \"${LATEST_DEST}\" && sudo -u ${GIT_USER} ${BUNDLE} exec rake gitlab:backup:create RAILS_ENV=production"
		elog "\$ /etc/init.d/${LATEST_DEST#*/opt/} stop"
		elog ""

		einfo "Press ENTER to continue, STRG-C to cancel"
		read

		einfo "Migrating uploads ..."
		einfo "This will move your uploads from \"$LATEST_DEST\" to \"${DEST_DIR}\", continue? [Y|n] "
		migrate_uploads=""
		while true
		do
			read -r migrate_uploads
			if [[ $migrate_uploads == "n" || $migrate_uploads == "N" ]] ; then migrate_uploads="" && break
			elif [[ $migrate_uploads == "y" || $migrate_uploads == "Y" || $migrate_uploads == "" ]] ; then migrate_uploads=1 && break
			else eerror "Please type either \"Y\" or \"N\" ... " ; fi
		done
		if [[ $migrate_uploads ]] ; then
			su -l ${GIT_USER} -s /bin/sh -c "
				mv ${LATEST_DEST}/public/uploads/* ${DEST_DIR}/public/uploads/" \
				|| die "failed to migrate uplaods."
		fi

		einfo "Migrating config ..."
		for conf in database.yml gitlab.yml resque.yml unicorn.rb ; do
			cp "${LATEST_DEST}/config/${conf}" "${DEST_DIR}/config/"

			example="${DEST_DIR}/config/${conf}.example"
			test -f "${example}" && mv "${example}" "${DEST_DIR}/config/.cfg0000_${conf}"
		done
		CONFIG_PROTECT="${DEST_DIR}" dispatch-conf || die "failed to automatically migrate config, run \"CONFIG_PROTECT=${DEST_DIR} dispatch-conf\" by hand, re-run this routine and skip config migration to proceed."

		einfo "Migrating database ..."
		su -l ${GIT_USER} -s /bin/sh -c "
			export LANG=en_US.UTF-8; export LC_ALL=en_US.UTF-8
			cd ${DEST_DIR}
			${BUNDLE} exec rake db:migrate RAILS_ENV=production" \
			|| die "failed to migrate database."

		einfo "Clear redis cache ..."
		su -l ${GIT_USER} -s /bin/sh -c "
			export LANG=en_US.UTF-8; export LC_ALL=en_US.UTF-8
			cd ${DEST_DIR}
			${BUNDLE} exec rake cache:clear RAILS_ENV=production" \
			|| die "failed to run cache:clear"

		einfo "Clear and precompile assets ..."
		su -l ${GIT_USER} -s /bin/sh -c "
			export LANG=en_US.UTF-8; export LC_ALL=en_US.UTF-8
			cd ${DEST_DIR}
			${BUNDLE} exec rake assets:clean RAILS_ENV=production
			${BUNDLE} exec rake assets:precompile RAILS_ENV=production" \
			|| die "failed to run assets:clean and assets:precompile"

	else

		## Check config files existence ##
		einfo "Checking configuration files ..."

		if [ ! -r "${CONF_DIR}/database.yml" ] ; then
			eerror "Copy \"${CONF_DIR}/database.yml.*\" to \"${CONF_DIR}/database.yml\""
			eerror "and edit this file in order to configure your database settings for"
			eerror "\"production\" environment."
			die
		fi
		if [ ! -r "${CONF_DIR}/gitlab.yml" ]; then
			eerror "Copy \"${CONF_DIR}/gitlab.yml.example\" to \"${CONF_DIR}/gitlab.yml\""
			eerror "and edit this file in order to configure your GitLab settings"
			eerror "for \"production\" environment."
			die
		fi

		einfo "Initializing database ..."
		su -l ${GIT_USER} -s /bin/sh -c "
			export LANG=en_US.UTF-8; export LC_ALL=en_US.UTF-8
			cd ${DEST_DIR}
			${BUNDLE} exec rake gitlab:setup RAILS_ENV=${RAILS_ENV}" \
				|| die "failed to run rake gitlab:setup"
	fi

	## (Re-)Link gitlab-shell-secret into gitlab-shell
	if test -L "${GITLAB_SHELL}/.gitlab_shell_secret"
	then
		rm "${GITLAB_SHELL}/.gitlab_shell_secret"
		ln -s "${DEST_DIR}/.gitlab_shell_secret" "${GITLAB_SHELL}/.gitlab_shell_secret"
	fi

	einfo "You might want to run the following in order to check your application status:"
	einfo "# cd ${DEST_DIR} && sudo -u ${GIT_USER} ${BUNDLE} exec rake gitlab:check RAILS_ENV=production"
	einfo ""
	einfo "GitLab is prepared, now you should configure your web server."
}
