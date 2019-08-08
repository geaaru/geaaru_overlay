# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/net-dialup/freeradius/freeradius-3.0.3.ebuild,v 1.3 2014/12/28 16:14:40 titanofold Exp $

EAPI=6

PYTHON_COMPAT=( python2_7 )
inherit autotools eutils pam python-any-r1 user systemd git-r3

EGIT_REPO_URI="https://github.com/FreeRADIUS/freeradius-server.git"
EGIT_BRANCH="v3.0.x"

DESCRIPTION="Highly configurable free RADIUS server"
HOMEPAGE="http://www.freeradius.org/"

KEYWORDS=""
LICENSE="GPL-2"
SLOT="0"

IUSE="debug firebird iodbc kerberos ldap libressl memcache mysql odbc oracle pam
	pcap postgres python readline rest samba sqlite ssl redis systemd mongo
"

RESTRICT="test firebird? ( bindist )"

RDEPEND="!net-dialup/cistronradius
	!net-dialup/freeradius:3.1
	!net-dialup/gnuradius
	sys-devel/libtool
	dev-lang/perl:=
	sys-libs/gdbm
	sys-libs/talloc
	python? ( ${PYTHON_DEPS} )
	readline? ( sys-libs/readline:0= )
	pcap? ( net-libs/libpcap )
	mysql? ( dev-db/mysql-connector-c )
	mongo? ( >=dev-libs/mongo-c-driver-1.13.0-r1 )
	postgres? ( dev-db/postgresql:= )
	firebird? ( dev-db/firebird )
	pam? ( virtual/pam )
	ssl? (
		!libressl? ( dev-libs/openssl:0= )
		libressl? ( dev-libs/libressl:0= )
	)
	ldap? ( net-nds/openldap )
	kerberos? ( virtual/krb5 )
	sqlite? ( dev-db/sqlite:3 )
	odbc? ( dev-db/unixODBC )
	iodbc? ( dev-db/libiodbc )
	redis? ( dev-db/redis )
	memcache? ( dev-libs/libmemcached )
	systemd? ( sys-apps/systemd )
	oracle? ( dev-db/oracle-instantclient-basic )"
DEPEND="${RDEPEND}"

RESTRICT="test"

PATCHES=(
	${FILESDIR}/freeradius-3.0.14-proxy-timestamp.patch
)

pkg_setup() {
	enewgroup radius
	enewuser radius -1 -1 /var/log/radius radius

	python-any-r1_pkg_setup
	export PYTHONBIN="${EPYTHON}"
}

src_prepare() {
	# most of the configuration options do not appear as ./configure
	# switches. Instead it identifies the directories that are available
	# and run through them. These might check for the presence of
	# various libraries, in which case they are not built.  To avoid
	# automagic dependencies, we just remove all the modules that we're
	# not interested in using.

	use ssl || rm -r src/modules/rlm_eap/types/rlm_eap_{tls,ttls,peap}
	use ldap || rm -r src/modules/rlm_ldap
	use kerberos || rm -r src/modules/rlm_krb5
	use pam || rm -r src/modules/rlm_pam
	use python || rm -r src/modules/rlm_python
	# Do not install ruby rlm module, bug #483108
	rm -r src/modules/rlm_ruby

	# these are all things we don't have in portage/I don't want to deal
	# with myself
	rm -r src/modules/rlm_eap/types/rlm_eap_tnc # requires TNCS library
	rm -r src/modules/rlm_eap/types/rlm_eap_ikev2 # requires libeap-ikev2
	rm -r src/modules/rlm_opendirectory # requires some membership.h

	rm -r src/modules/rlm_sql/drivers/rlm_sql_{db2,freetds}

	if ! use redis ; then
		rm -r src/modules/rlm_redis{,who} # requires redis
	fi

	# sql drivers that are not part of experimental are loaded from a
	# file, so we have to remove them from the file itself when we
	# remove them.
	usesqldriver() {
		local flag=$1
		local driver=rlm_sql_${2:-${flag}}

		if ! use ${flag}; then
			rm -r src/modules/rlm_sql/drivers/${driver} || die
			sed -i -e /${driver}/d src/modules/rlm_sql/stable || die
		fi
	}

	sed -i \
		-e 's:^#\tuser = :\tuser = :g' \
		-e 's:^#\tgroup = :\tgroup = :g' \
		-e 's:/var/run/radiusd:/run/radiusd:g' \
		-e '/^run_dir/s:${localstatedir}::g' \
		raddb/radiusd.conf.in || die

	# verbosity
	# build shared libraries using jlibtool --shared
	sed -i \
		-e '/$(LIBTOOL)/s|--quiet ||g' \
		-e 's:--mode=\(compile\|link\):& --shared:g' \
		Make.inc.in || die

	sed -i \
		-e 's|--silent ||g' \
		-e 's:--mode=\(compile\|link\):& --shared:g' \
		scripts/libtool.mk || die

	# crude measure to stop jlibtool from running ranlib and ar
	sed -i \
		-e '/LIBRARIAN/s|".*"|"true"|g' \
		-e '/RANLIB/s|".*"|"true"|g' \
		scripts/jlibtool.c || die

	usesqldriver mysql
	usesqldriver postgres postgresql
	usesqldriver firebird
	usesqldriver iodbc
	usesqldriver odbc unixodbc
	usesqldriver oracle
	usesqldriver sqlite
	usesqldriver mongo

	default

	eapply_user

	eautoreconf
}

src_configure() {
	local myeconfargs=(
		--enable-shared
		--disable-static
		--disable-ltdl-install
		--with-system-libtool
		--with-system-libltdl
		--with-ascend-binary
		--with-udpfromto
		--with-dhcp
		--with-iodbc-include-dir=/usr/include/iodbc
		--with-experimental-modules
		--with-docdir=/usr/share/doc/${PF}
		--with-logdir=/var/log/radius
		$(use_enable debug developer)
		$(use_with ldap edir)
		$(use_with ssl openssl)
		$(use_with systemd systemd)
	)
	# fix bug #77613
	if has_version app-crypt/heimdal; then
		myeconfargs+=( --enable-heimdal-krb5 )
	fi

	use readline || export ac_cv_lib_readline=no
	use pcap || export ac_cv_lib_pcap_pcap_open_live=no

	# do not try to enable static with static-libs; upstream is a
	# massacre of libtool best practices so you also have to make sure
	# to --enable-shared explicitly.
	econf "${myeconfargs[@]}"
}

src_compile() {
	# verbose, do not generate certificates
	emake \
		Q='' ECHO=true \
		LOCAL_CERT_PRODUCTS=''
}

src_install() {
	dodir /etc
	diropts -m0750 -o root -g radius
	dodir /etc/raddb
	diropts -m0750 -o radius -g radius
	dodir /var/log/radius
	keepdir /var/log/radius/radacct
	diropts

	# verbose, do not install certificates
	emake -j1 \
		Q='' ECHO=true \
		LOCAL_CERT_PRODUCTS='' \
		R="${D}" \
		install

	fowners -R radius:radius /etc/raddb
	fowners -R radius:radius /var/log/radius

	pamd_mimic_system radiusd auth account password session

	dodoc CREDITS

	rm "${D}/usr/sbin/rc.radiusd"

	newinitd "${FILESDIR}/radius.init-r3" radiusd
	newconfd "${FILESDIR}/radius.conf-r3" radiusd

	# Systemd files
	systemd_newtmpfilesd "${FILESDIR}"/freeradius.tmpfiles freeradius.conf
	systemd_dounit "${FILESDIR}"/freeradius.service
	systemd_install_serviced "${FILESDIR}"/freeradius.service.conf

	# Remove all default sites under site-enables.
	# Administrator install all sites when configure freeradius.
	rm ${D}/etc/raddb/sites-enabled/{inner-tunnel,default}
	# Remove part of modules that require a configuration
	# from mods-enabled directory.
	rm ${D}/etc/raddb/mods-enabled/{cache_eap,digest,eap,mschap,ntlm_auth}

	prune_libtool_files
}

pkg_config() {
	if use ssl; then
		cd "${ROOT}"/etc/raddb/certs
		./bootstrap
		fowners -R root:radius "${ROOT}"/etc/raddb/certs
	fi
}

pkg_preinst() {
	if ! has_version ${CATEGORY}/${PN} && use ssl; then
		elog "You have to run \`emerge --config =${CATEGORY}/${PF}\` to be able"
		elog "to start the radiusd service."
	fi
}
