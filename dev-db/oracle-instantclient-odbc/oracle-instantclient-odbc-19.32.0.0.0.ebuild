# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7
inherit eutils

DESCRIPTION=""
SRC_URI="https://download.oracle.com/otn_software/linux/instantclient/1932000/instantclient-odbc-linux.x64-19.32.0.0.0dbru.zip -> instantclient-odbc-linux.x64-19.32.0.0.0dbru.zip"
LICENSE="OTN"
SLOT="0"
KEYWORDS="*"
RDEPEND=">=dev-db/oracle-instantclient-basic-19.32.0.0.0
	
"
DEPEND="app-arch/unzip
	
"
S="${WORKDIR}/instantclient_19_32/"

src_install() {
	# library
	dodir /usr/$(get_libdir)/oracle/19.32.0.0.0/client/lib
	insinto /usr/$(get_libdir)/oracle/19.32.0.0.0/client/lib
	doins *.so.19.1

	# fixes symlinks
	dosym /usr/$(get_libdir)/oracle/19.32.0.0.0/client/lib/libsqora.so.19.1 \
		/usr/$(get_libdir)/oracle/19.32.0.0.0/client/lib/libsqora.so

	# odbc_update_ini.sh
	dodir /usr/$(get_libdir)/oracle/19.32.0.0.0/client/bin
	exeinto /usr/$(get_libdir)/oracle/19.32.0.0.0/client/bin
	doexe odbc_update_ini.sh
}


# vim: filetype=ebuild
