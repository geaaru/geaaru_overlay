# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7
inherit eutils

DESCRIPTION=""
SRC_URI="https://download.oracle.com/otn_software/linux/instantclient/2123000/instantclient-odbc-linux.x64-21.23.0.0.0dbru.zip -> instantclient-odbc-linux.x64-21.23.0.0.0dbru.zip"
LICENSE="OTN"
SLOT="0"
KEYWORDS="*"
RDEPEND=">=dev-db/oracle-instantclient-basic-21.23.0.0.0
	
"
DEPEND="app-arch/unzip
	
"
S="${WORKDIR}/instantclient_21_23/"

src_install() {
	# library
	dodir /usr/$(get_libdir)/oracle/21.23.0.0.0/client/lib
	insinto /usr/$(get_libdir)/oracle/21.23.0.0.0/client/lib
	doins *.so.21.1

	# fixes symlinks
	dosym /usr/$(get_libdir)/oracle/21.23.0.0.0/client/lib/libsqora.so.21.1 \
		/usr/$(get_libdir)/oracle/21.23.0.0.0/client/lib/libsqora.so

	# odbc_update_ini.sh
	dodir /usr/$(get_libdir)/oracle/21.23.0.0.0/client/bin
	exeinto /usr/$(get_libdir)/oracle/21.23.0.0.0/client/bin
	doexe odbc_update_ini.sh
}


# vim: filetype=ebuild
