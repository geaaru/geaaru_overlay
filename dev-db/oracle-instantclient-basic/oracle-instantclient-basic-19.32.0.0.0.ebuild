# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7
QA_PREBUILT="usr/lib*/oracle/19.32.0.0.0/client/lib*/lib*"
inherit eutils

DESCRIPTION=""
SRC_URI="https://download.oracle.com/otn_software/linux/instantclient/1932000/instantclient-basic-linux.x64-19.32.0.0.0dbru.zip -> instantclient-basic-linux.x64-19.32.0.0.0dbru.zip"
LICENSE="OTN"
SLOT="0"
KEYWORDS="*"
RDEPEND="dev-libs/libaio
	
"
DEPEND="app-arch/unzip
	
"
S="${WORKDIR}/instantclient_19_32/"

src_install() {
	local ldpath=
	# all binaries go here
	local oracle_home=/usr/$(get_libdir)/oracle/19.32.0.0.0/client
	into "${oracle_home}"

	# shared libraries
	dolib.so lib*.so*

	# ensure to be linkable
	[[ -e libocci.so ]] ||
	dosym libocci.so.19.1 \
		"${oracle_home}"/$(get_libdir)/libocci.so
	[[ -e libclntsh.so ]] ||
	dosym libclntsh.so.19.1 \
		"${oracle_home}"/$(get_libdir)/libclntsh.so

	# java archives
	insinto "${oracle_home}"/$(get_libdir)
	doins *.jar

	# runtime library path
	ldpath+=${ldpath:+:}${oracle_home}/$(get_libdir)

	# ensure ORACLE_HOME/lib exists
	[[ -e ${ED}${oracle_home}/lib ]] ||
	dosym $(get_libdir) "${oracle_home}"/lib

	# create path for tnsnames.ora
	insinto /etc/oracle
	doins "${FILESDIR}"/tnsnames.ora.sample

	# Add OCI libs to library path
	{
		echo "ORACLE_HOME=${oracle_home}"
		echo "LDPATH=${ldpath}"
		# who does need this?
		# echo "C_INCLUDE_PATH=${oracle_home}/include"
		echo "TNS_ADMIN=/etc/oracle/"
	} > "${T}"/50oracle-instantclient-basic
	doenvd "${T}"/50oracle-instantclient-basic
}
pkg_postinst() {
	elog "TNS_ADMIN has been set to ${EROOT}etc/oracle by default,"
	elog "put your tnsnames.ora there or configure TNS_ADMIN"
	elog "to point to your user specific configuration."
	ewarn "Please re-source your shell settings for ORACLE_HOME"
	ewarn "  changes, such as: source /etc/profile"
}


# vim: filetype=ebuild
