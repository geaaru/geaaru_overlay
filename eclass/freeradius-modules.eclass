# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

# @ECLASS: freeradius-modules.eclass
# @MAINTAINER:
# geaaru@gmail.com
# @AUTHOR:
# Geaaru <geaaru@gmail.com>
# @DESCRIPTION:
# Purpose: Manage compilation and installation of external freeradius modules.
#

case ${EAPI:-0} in
	5|6|7) ;;
	*) die "${ECLASS}.eclass API in EAPI ${EAPI} not supported."
esac

FREERADIUS_MODULES_VERSION="0.2.1"

# FREERADIUS_MOD_TYPE identify type of modules.
# Possible values are: sql | normal
# Currently are supported only sql modules.
if [[ -z "${FREERADIUS_MOD_TYPE}" ]] ; then
    die "FREERADIUS_MOD_TYPE variable not set"
fi

if [[ -z "${FREERADIUS_VERSION}" ]] ; then
    die "FREERADIUS_VERSION variable not set"
fi

# Define if source file contains all freeradius tree or not.
# If this value is 0 then for sql module type means
# that eclass copy directory inside src/modules/rlm_sql/drivers
# or src/modules.
# If value is 1 then eclass copy directly all source inside ${FR_P}.
FREERADIUS_MOD_SRC_WITH_TREE="${FREERADIUS_MOD_SRC_WITH_TREE:-0}"

_freeradius-modules_set_metadata() {

	# Retrieve current version of freeradius server
	local fr_version="${FREERADIUS_VERSION}"

	FR_P="freeradius-server-${fr_version}"

	if [ "${FREERADIUS_VERSION}" != "9999" ] ; then
        SRC_URI+=" ftp://ftp.freeradius.org/pub/radius/${FR_P}.tar.gz"
	fi
}

_freeradius-modules_set_metadata
unset -f _freeradius-modules_set_metadata

EXPORT_FUNCTIONS src_unpack src_compile src_prepare src_configure src_install

# @FUNCTION: freeradius-modules_src_unpack
# @DESCRIPTION:
# Implementation of src_unpack() phase. This function is exported.
freeradius-modules_src_unpack() {

	local module_dirname=""
	local module_dirpath=""
	local module_from_git=true

	local S_OLD=${S}
	S="${WORKDIR}/${FR_P}"

	if [[ ${PV} = "9999" || -n "${EGIT_COMMIT}" ]] ; then

		# Handle use case when we use freeradius-server-9999
		# but modules use a specific version
		if [ -z "${EGIT_REPO_URI}" ] ; then
			default_src_unpack
			module_from_git=false
		else
			# Retrieve data from package git repository
			git-r3_src_unpack
		fi

		if [ "${FREERADIUS_VERSION}" == "9999" ] ; then

			if [ $module_from_git == true ] ; then
				# Note: Currently I support only EGIT_REPO_URI, EGIT_COMMIT,
				#       EGIT_CHECKOUT_DIR, EGIT_SUBMODULES, EGIT_BRANCH

				local old_egit_repo_uri="${EGIT_REPO_URI}"
				local old_egit_commit="${EGIT_COMMIT}"
				local old_egit_checkout_dir="${EGIT_CHECKOUT_DIR}"
				local old_egit_sub_modules=${EGIT_SUBMODULES}
				local old_egit_branch="${EGIT_BRANCH}"
			fi

			# Reset EGIT fields
			EGIT_SUBMODULES=()
			EGIT_COMMIT=""
			EGIT_BRANCH=""
			EGIT_REPO_URI="https://github.com/FreeRADIUS/freeradius-server.git"
			EGIT_CHECKOUT_DIR="${WORKDIR}/${FR_P}"
			if [ -n "${FREERADIUS_BRANCH}" ] ; then
				EGIT_BRANCH="${FREERADIUS_BRANCH}"
			else
				if [ -n "${FREERADIUS_COMMIT}" ] ; then
					EGIT_COMMIT="${FREERADIUS_COMMIT}"
				else
					EGIT_BRANCH="master"
				fi
			fi

			# Retrieve data from freeradius-server project
			git-r3_src_unpack
			
			if [ $module_from_git == true ] ; then
				# Restore EGIT package variables
				EGIT_SUBMODULES=${old_egit_sub_modules}
				EGIT_COMMIT="${old_egit_commit}"
				EGIT_BRANCH="${old_egit_branch}"
				EGIT_REPO_URI="${old_egit_repo_uri}"
				EGIT_CHECKOUT_DIR="${old_egit_checkout_dir}"
			fi

		else
			default_src_unpack
		fi

	else
		default_src_unpack
	fi

	# rlm_mschap is required because
	# contains smbdes.h header file.

	if [[ ${FREERADIUS_MOD_TYPE} = "sql" ]] ; then
		module_dirname="${PN/freeradius-sql-/rlm_sql_}"
		module_dirpath="src/modules/rlm_sql/drivers/"

		# Override stable file of rlm_sql modules
		echo ${module_dirname} > ${S}/src/modules/rlm_sql/stable

		echo "rlm_sql" > ${S}/src/modules/stable

	else
		module_dirname="${PN/freeradius-/rlm_}"
		module_dirpath="src/modules/"

		echo ${module_dirname} > ${S}/src/modules/stable
	fi

	# Remove all rlm_sql drivers
	rm -rf ${S}/src/modules/rlm_sql/drivers/rlm_sql_*

	rm -rf ${S}/src/modules/rlm_{always,attr_filter,cache,chap,couchbase,counter} || true
	rm -rf ${S}/src/modules/rlm_{cram,date,digest,dynamic_clients,eap,example,exec} || true
	rm -rf ${S}/src/modules/rlm_{expiration,expr,files,idn,ippool,krb5,ldap,linelog} || true
	rm -rf ${S}/src/modules/rlm_{logintime,opendirectory,otp,pam,passwd,perl} || true
	rm -rf ${S}/src/modules/rlm_{preprocess,python,python3,radutmp,realm,redis,rediswho} || true
	rm -rf ${S}/src/modules/rlm_{replicate,rest,ruby,securid,smsotp,soh,sometimes} || true
	rm -rf ${S}/src/modules/rlm_{sqlcounter,sqlhpwippool,sqlippool,test,unbound} || true
	rm -rf ${S}/src/modules/rlm_{unix,unpack,utf8,wimax,yubikey} || true
	rm -rf ${S}/src/modules/rlm_{detail,pap} || true

	if [ "${FREERADIUS_MOD_SRC_WITH_TREE}" = "1" ] ; then
		cp -rf ${S_OLD}/* ${S}
		rm -rf ${S_OLD}
	else
		mv ${S_OLD} ${S}/${module_dirpath}/${module_dirname}
	fi
}


# @FUNCTION: freeradius-modules_src_prepare
# @DESCRIPTION:
# Implementation of src_prepare() phase. This function is exported.
freeradius-modules_src_prepare() {
	# I'm on ${S} => work/freeradius-server-${FREERADIUS_VERSION}

	if [ "${EAPI}" == 5 ]; then
		epatch_user
	else
		eapply_user
	fi

	eautoreconf

	for driver in src/modules/rlm_sql/drivers/rlm_* ; do
		cd ${driver}
		if [[ -e configure || -e configure.ac ]] ; then
			eautoreconf
		fi
	done
}

# @FUNCTION: freeradius-modules_src_compile
# @DESCRIPTION:
# Implementation of src_compile() phase. This function is exported.
freeradius-modules_src_compile() {

	# verbose, do not generate certificates
	emake \
		Q='' ECHO=true \
		LOCAL_CERT_PRODUCTS=''
}

# @FUNCTION: freeradius-modules_src_configure
# @DESCRIPTION:
# Implementation of src_configure() phase. This function is exported.
# This function must be override if there are custom configure params.
freeradius-modules_src_configure() {

	# fix bug #77613
	if has_version app-crypt/heimdal; then
		myconf="${myconf} --enable-heimdal-krb5"
	fi

	# do not try to enable static with static-libs; upstream is a
	# massacre of libtool best practices so you also have to make sure
	# to --enable-shared explicitly.
	econf \
		--enable-shared \
		--disable-static \
		--disable-ltdl-install \
		--with-system-libtool \
		--with-system-libltdl \
		--with-ascend-binary \
		--with-udpfromto \
		--with-dhcp \
		--with-iodbc-include-dir=/usr/include/iodbc \
		--with-experimental-modules \
		--with-docdir=/usr/share/doc/freeradius-${FREERADIUS_VERSION} \
		--with-logdir=/var/log/radius \
		${myconf}

}

# @FUNCTION: freeradius-modules_src_install
# @DESCRIPTION:
# Implementation of src_install() phase. This function is exported.
# This function must be override if there are custom configure params.
freeradius-modules_src_install() {

	dodir /etc
	dodir /etc/raddb

	# verbose, do not install certificates
	# TODO: check if there a way to install only
	#       module files.
	emake -j1 \
		Q='' ECHO=true \
		LOCAL_CERT_PRODUCTS='' \
		R="${D}" \
		install

	# Remove freeradius files
	rm -r ${D}/etc/
	rm -r ${D}/var/
	rm -r ${D}/usr/bin/
	rm -r ${D}/usr/sbin/
	rm -r ${D}/usr/include/
	rm -r ${D}/usr/share/
	rm -r ${D}/usr/lib64/libfreeradius*
	rm -r ${D}/usr/lib64/proto_*
	rm -r ${D}/usr/lib64/rlm_{dhcp,mschap,sql}.*

	prune_libtool_files
}

# vim: ts=4 sw=4 expandtab
