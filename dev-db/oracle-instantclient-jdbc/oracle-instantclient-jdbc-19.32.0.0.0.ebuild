# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7
inherit eutils

DESCRIPTION=""
SRC_URI="https://download.oracle.com/otn_software/linux/instantclient/1932000/instantclient-jdbc-linux.x64-19.32.0.0.0dbru.zip -> instantclient-jdbc-linux.x64-19.32.0.0.0dbru.zip"
LICENSE="OTN"
SLOT="0"
KEYWORDS="*"
RDEPEND=">=dev-db/oracle-instantclient-basic-19.32.0.0.0
	
"
DEPEND="app-arch/unzip
	
"
S="${WORKDIR}/instantclient_19_32/"

src_install() {
	dodir /usr/$(get_libdir)/oracle/${PV}/client/lib
	insinto /usr/$(get_libdir)/oracle/${PV}/client/lib
	doins libheteroxa19.so orai18n.jar orai18n-mapping.jar
}
pkg_postinst() {
	elog "The JDBC supplement package for Oracle 10g has been installed."
	elog "You may wish to install the oracle-instantclient-sqlplus (for "
	elog "running the SQL*Plus application) package as well."
	elog
	elog "oracle-instantclient-* packages aren't installed in different"
	elog "SLOTs any longer. You may want to uninstall older versions."
}


# vim: filetype=ebuild
