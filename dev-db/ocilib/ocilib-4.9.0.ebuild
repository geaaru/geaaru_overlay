# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

DESCRIPTION="OCILIB (C and C++ Drivers for Oracle) - Open source C and C++ library for accessing Oracle databases"
HOMEPAGE="http://www.ocilib.net"
SRC_URI="https://api.github.com/repos/vrogier/ocilib/tarball/v4.9.0 -> ocilib-4.9.0-b91e389.tar.gz"
LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="*"
RDEPEND="dev-db/oracle-instantclient-basic
	
"
DEPEND="${RDEPEND}
"

post_src_unpack() {
	mv vrogier-ocilib-* ${S}
}


src_compile() {
	local myconf="${myconf} "
	local oracle_version=$(best_version dev-db/oracle-instantclient-basic \
	  | sed -e 's/dev-db\/oracle-instantclient-basic-//')
	 einfo "Use oracle version ${oracle_version}"
	myconf="${myconf} --enable-shared"
	 myconf="${myconf} \
	    --with-oracle-headers-path=/usr/lib64/oracle/${oracle_version}/client/include"
	myconf="${myconf} \
	    --with-oracle-lib-path=/usr/lib64/oracle/${oracle_version}/client/lib"
	 myconf="${myconf} \
	    --with-oracle-home=/usr/lib64/oracle/${oracle_version}/client/"
	 econf ${myconf} || die
	emake || die
}
src_install() {
	make install DESTDIR="${D}" || die "install failed"
}



# vim: filetype=ebuild
