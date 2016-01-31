# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"

# Mainteiner notes:
# - This ebuild uses Bundler to download and install all gems in deployment mode
#   (i.e. into isolated directory inside application). That's not Gentoo way how
#   it should be done, but GitLab-CI has too many dependencies that it will be too
#   difficult to maintain them via ebuilds.
#

USE_RUBY="ruby20"
PYTHON_DEPEND="2:2.5"

EGIT_REPO_URI="https://gitlab.com/gitlab-org/gitlab-ci.git"
EGIT_COMMIT="v${PV}"

inherit eutils git-2 python ruby-ng versionator user

DESCRIPTION="Continuous integration server for GitLab"
HOMEPAGE="https://gitlab.com/gitlab-org/gitlab-ci"

LICENSE="MIT"
SLOT=$(get_version_component_range 1-2)
KEYWORDS="~amd64 ~x86 ~arm"
IUSE="memcached mysql +postgres +unicorn"

## Gems dependencies:
#	grape, capybara		dev-libs/libxml2, dev-libs/libxslt
#   json				dev-util/ragel
#   yajl-ruby			dev-libs/yajl
#   pygments.rb			python 2.5+
#   execjs				net-libs/nodejs, or any other JS runtime
#   pg					dev-db/postgresql-base
#   mysql				virtual/mysql
#
GEMS_DEPEND="
	dev-libs/libxml2
	dev-libs/libxslt
	dev-util/ragel
	dev-libs/yajl
	net-libs/nodejs
	postgres? ( dev-db/postgresql )
	mysql? ( virtual/mysql )
	memcached? ( net-misc/memcached )"
DEPEND="${GEMS_DEPEND}
	$(ruby_implementation_depend ruby19 '=' -1.9.3*)[readline,ssl,yaml]
	sys-devel/gcc
	sys-libs/glibc
	sys-devel/make
	dev-vcs/git
	>=dev-vcs/git-1.8.1.5
	net-misc/curl
	virtual/ssh"
RDEPEND="${DEPEND}
	dev-db/redis
	virtual/mta"
ruby_add_bdepend "
	virtual/rubygems
	>=dev-ruby/bundler-1.0"

#RUBY_PATCHES=(
#	"${P}-fix-checks-gentoo.patch"
#)

GITLABCI_USER="gitlab_ci"
GITLABCI_GROUP="gitlab_ci"
GITLABCI_HOME=$(if [ -n "$(getent passwd gitlab_ci | cut -d: -f6)" ]; then (getent passwd gitlab_ci | cut -d: -f6); else (echo /var/lib/gitlab-ci); fi)
DEST_DIR="/opt/${PN}-${SLOT}"
CONF_DIR="/etc/${PN}-${SLOT}"

RAILS_ENV=${RAILS_ENV:-production}
RUBY=${RUBY:-ruby20}
BUNDLE="${RUBY} /usr/bin/bundle"

pkg_setup() {
    enewgroup ${GITLABCI_GROUP}
    enewuser ${GITLABCI_USER} -1 -1 ${DEST_DIR} "$GITLABCI_GROUP"
}

all_ruby_unpack() {
	git-2_src_unpack
}

each_ruby_prepare() {

	# modify database settings
	sed -i \
		-e 's|\(socket:\).*|/tmp/postgresql/.s.PGSQL.5432|' \
		config/database.yml.postgresql \
		|| die "failed to filter database.yml.postgresql"
	
	# remove needless files
	#rm -r .git Satisfy gitlab::check.
	rm .foreman .gitignore Procfile
	use unicorn || rm config/unicorn.rb.example
	use postgres || rm config/database.yml.postgresql
	use mysql || rm config/database.yml.mysql

	# remove dependency on therubyracer and libv8 (we're using nodejs instead)
	local tfile; for tfile in Gemfile{,.lock}; do
		sed -i \
			-e '/therubyracer/d' \
			-e '/libv8/d' \
			"${tfile}" || die "failed to filter ${tfile}"
	done

	# change thin and unicorn dependencies to be optional
	sed -i \
		-e '/^gem "thin"/ s/$/, group: :thin/' \
		-e '/^gem "unicorn"/ s/$/, group: :unicorn/' \
		Gemfile || die "failed to modify Gemfile"
	
	# change cache_store
	if use memcached; then
		sed -i \
			-e "/\w*config.cache_store / s/=.*/= :dalli_store, { namespace: 'gitlab_ci' }/" \
			config/environments/production.rb \
			|| die "failed to modify production.rb"
	fi

	# Update pathes for unicorn
	if use unicorn; then
		sed -i \
			-e "s#/home/gitlab_ci/gitlab-ci#${DEST_DIR}#" \
			config/unicorn.rb.example \
			|| die "failed to modify unicorn.rb.example"
	fi
	
    # Use ice_nine 0.11.1 as 0.11.0 won't install on arm
    sed -i \
            -e "s#ice_nine (0.11.0)#ice_nine (0.11.1)#g" \
            Gemfile.lock \
            || die "failed to update Gemfile.lock"

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

	## Install configs ##

	insinto "${conf}"
	doins -r config/*
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
		"${FILESDIR}"/gitlab-ci.logrotate > "${D}"/etc/logrotate.d/${PN}-${SLOT} \
		|| die "failed to filter gitlab-ci.logrotate"

	## Install gems via bundler ##

	cd "${D}/${dest}"

	# TODO: why thin? it's not listed in Gemfile...
	local without="development test thin"
	local flag; for flag in memcached mysql postgres unicorn; do
		without+="$(use $flag || echo ' '$flag)"
	done
	local bundle_args="--deployment ${without:+--without ${without}}"

	# Use systemlibs for nokogiri as suggested
	${BUNDLE} config build.nokogiri --use-system-libraries

	einfo "Running bundle install ${bundle_args} ..."
	${BUNDLE} install ${bundle_args} || die "bundler failed"

	## Clean ##

	local gemsdir=vendor/bundle/ruby/$(ruby_rbconfig_value 'ruby_version')

	# remove gems cache
	rm -Rf ${gemsdir}/cache

	# fix permissions
	fowners -R ${GITLABCI_USER}:${GITLABCI_GROUP} "${dest}" "${conf}" "${temp}" "${logs}"
	fperms o+Xr "${temp}" # Let nginx access the unicorn socket

	## RC scripts ##
	local rcscript=${P}.init

	cp "${FILESDIR}/${rcscript}" "${T}" || die
	sed -i \
		-e "s|@GITLABCI_USER@|${GITLABCI_USER}|" \
		-e "s|@GITLABCI_GROUP@|${GITLABCI_USER}|" \
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

pkg_postinst() {
	# TODO: Do we need to set git user... not in main documentation
	if [ ! -e "${GITLABCI_HOME}/.ssh/id_rsa" ]; then
		einfo "Generating SSH key for git user"
		su -l ${GITLABCI_USER} -s /bin/sh -c "
			ssh-keygen -q -N '' -t rsa -f ${GITLABCI_HOME}/.ssh/id_rsa" \
			|| die "failed to generate SSH key"
	fi
	if [ ! -e "${GITLABCI_HOME}/.gitconfig" ]; then
		einfo "Setting git user in ${GITLABCI_HOME}/.gitconfig, feel free to "
		einfo "modify this file according to your needs!"
		su -l ${GITLABCI_USER} -s /bin/sh -c "
			git config --global user.email 'gitlab@localhost';
			git config --global user.name 'GitLab'" \
			|| die "failed to setup git name and email"
	fi

	elog "If this is a new installation, proceed with the following steps:"
	elog
	elog "  1. Copy ${CONF_DIR}/application.yml.example to ${CONF_DIR}/application.yml"
	elog "     and edit this file in order to configure your GitLab CI settings."
	elog
	elog "  2. Copy ${CONF_DIR}/database.yml.* to ${CONF_DIR}/database.yml"
	elog "     and edit this file in order to configure your database settings"
	elog "     for \"production\" environment."
	elog
	elog "  3. Copy ${CONF_DIR}/unicorn.rb.example to ${CONF_DIR}/unicorn.rb"
	elog "     and edit this file in order to configure your GitLab CI settings."
	elog
	elog "  4. (Optional) If you want use SMTP:"
	elog "     Copy ${CONF_DIR}/initializers/smtp_settings.rb.sample to ${CONF_DIR}/initializers/smtp_settings.rb"
	elog "     and edit this file in order to configure your SMTP settings."
	elog
	elog "  5. If this is a new installation, create a database for your GitLab CI instance."
	## TODO double check ROLE vs USER and if CAST command is needed
	if use postgres; then
        elog "    If you have local PostgreSQL running, just copy&run:"
        elog "        su postgres"
        elog "        psql -c \"CREATE ROLE gitlab_ci PASSWORD 'gitlab_ci' \\"
        elog "            NOSUPERUSER CREATEDB NOCREATEROLE INHERIT LOGIN;\""
        elog "        createdb -E UTF-8 -O gitlab_ci gitlab_ci_production"
		elog "    Note: You should change your password to something more random..."
		elog
 		elog "    GitLab CI uses polymorphic associations which are not SQL-standard friendly."
		elog "    To get it work you must use this ugly workaround:"
		elog "        psql -U postgres -d gitlab_ci"
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
}

pkg_config() {
	## Check config files existence ##

	einfo "Checking configuration files ..."

	if [ ! -r "${CONF_DIR}/database.yml" ] ; then
		eerror "Copy \"${CONF_DIR}/database.yml.*\" to \"${CONF_DIR}/database.yml\""
		eerror "and edit this file in order to configure your database settings for"
		eerror "\"production\" environment."
		die
	fi
	if [ ! -r "${CONF_DIR}/application.yml" ]; then
		eerror "Copy \"${CONF_DIR}/application.yml.example\" to \"${CONF_DIR}/application.yml\""
		eerror "and edit this file in order to configure your GitLab CI settings"
		eerror "for \"production\" environment."
		die
	fi

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
			find /opt -maxdepth 1 -iname 'gitlab-ci-*' -and -type d -and -not -iname "gitlab-ci-${SLOT}" | \
			sort -r | head -n1)

		if [[ -z "${LATEST_DEST}" || ! -d "${LATEST_DEST}" ]] ; then
			einfo "Please enter the path to your latest Gitlab CI instance:"
			while true
			do 
				read -r LATEST_DEST
				test -d ${LATEST_DEST} && break ||\
					eerror "Please specify a valid path to your Gitlab CI instance!"
			done
		else
			einfo "Found your latest Gitlab CI instance at \"${LATEST_DEST}\"."
		fi

		einfo "Please make sure that you've stopped your running Gitlab CI instance and that you've created a backup: "
		einfo "* Note that GitLab CI currently does not have a backup script, we suggest you backup the appropriate"
		einfo "database as a precautionary measure."
		#elog "\$ cd \"${LATEST_DEST}\" && sudo -u ${GITLABCI_USER} ${BUNDLE} exec rake gitlabci:backup:create RAILS_ENV=production"
		#elog ""

		einfo "Press ENTER to continue, STRG-C to cancel"
		read

		einfo "Migrating config ..."
		for conf in database.yml application.yml resque.yml unicorn.rb ; do
			cp "${LATEST_DEST}/config/${conf}" "${DEST_DIR}/config/"

			example="${DEST_DIR}/config/${conf}.example"
			test -d "${example}" && mv "${example}" "${DEST_DIR}/config/.cfg0000_${conf}"
		done
		CONFIG_PROTECT="${DEST_DIR}" dispatch-conf || die "failed to migrate config."

		## TODO
        einfo "Migrating database ..."
        su -l ${GITLABCI_USER} -s /bin/sh -c "
            export LANG=en_US.UTF-8; export LC_ALL=en_US.UTF-8
            cd ${DEST_DIR} 
            ${BUNDLE} exec rake db:migrate RAILS_ENV=production" \
            || die "failed to migrate database."

        einfo "Clear redis cache ..."
        su -l ${GITLABCI_USER} -s /bin/sh -c "
            export LANG=en_US.UTF-8; export LC_ALL=en_US.UTF-8
            cd ${DEST_DIR}
            ${BUNDLE} exec rake cache:clear RAILS_ENV=production" \
            || die "failed to run cache:clear"

        einfo "Clear and precompile assets ..."
        su -l ${GITLABCI_USER} -s /bin/sh -c "
            export LANG=en_US.UTF-8; export LC_ALL=en_US.UTF-8
            cd ${DEST_DIR}
            ${BUNDLE} exec rake assets:clean RAILS_ENV=production
            ${BUNDLE} exec rake assets:precompile RAILS_ENV=production" \
            || die "failed to run assets:precompile"

	else

		einfo "Initializing database ..."
		su -l ${GITLABCI_USER} -s /bin/sh -c "
			export LANG=en_US.UTF-8; export LC_ALL=en_US.UTF-8
			cd ${DEST_DIR}
			${BUNDLE} exec rake setup RAILS_ENV=${RAILS_ENV}" \
				|| die "failed to run rake setup"

		einfo "Initializing scheduler ..."
		su -l ${GITLABCI_USER} -s /bin/sh -c "
			export LANG=en_US.UTF-8; export LC_ALL=en_US.UTF-8
			cd ${DEST_DIR}
			${BUNDLE} exec whenever -w RAILS_ENV=${RAILS_ENV}" \
				|| die "failed to run whenever -w"
	fi

	#TODO There is currently no check script available
	#einfo "You might want to run the following in order to check your application status:"
	#einfo "# cd ${DEST_DIR} && sudo -u ${GITLABCI_USER} ${BUNDLE} exec rake gitlab:check RAILS_ENV=production"
	einfo ""
	einfo "GitLab CI is prepared, now you should configure your web server."
}