# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7
QA_PREBUILT="
usr/lib*/oracle/19.32.0.0.0/client/lib*/lib*
usr/lib*/oracle/19.32.0.0.0/client/bin/sqlplus
"

inherit eutils pax-utils

DESCRIPTION=""
SRC_URI="https://download.oracle.com/otn_software/linux/instantclient/1932000/instantclient-sqlplus-linux.x64-19.32.0.0.0dbru.zip -> instantclient-sqlplus-linux.x64-19.32.0.0.0dbru.zip"
LICENSE="OTN"
SLOT="0"
KEYWORDS="*"
RDEPEND=">=dev-db/oracle-instantclient-basic-19.32.0.0.0
	
"
DEPEND="app-arch/unzip
	
"
S="${WORKDIR}/instantclient_19_32/"
src_install() {
	# all binaries go here
	local oracle_home=usr/$(get_libdir)/oracle/oracle-instantclient-sqlplus/client
	into /"${oracle_home}"
	dolib.so libsqlplus.so libsqlplusic.so
	dobin sqlplus
	insinto /"${oracle_home}"/sqlplus/admin
	doins glogin.sql
	pax-mark -c "${ED}${oracle_home}"/bin/sqlplus || die
	dosym /"${oracle_home}"/bin/sqlplus /usr/bin/sqlplus
}


# vim: filetype=ebuild
