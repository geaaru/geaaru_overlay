# ==========================================================================
# This ebuild come from fantoo repository. Zugaina.org only host a copy.
# For more info go to http://gentoo.zugaina.org/
# ***************** General Portage Overlay (11/20/06) *****************
# ==========================================================================
# Copyright 1999-2004 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit eutils
inherit mono

DESCRIPTION="Simias SimpleServer"
HOMEPAGE="http://www.ifolder.com/index.php/Simple_Server/"
SRC_URI="http://forgeftp.novell.com/ifolder/client/released/20050908_1424/source/${P}.tar.gz"

SLOT="0"
LICENSE="GPL-2"
KEYWORDS="~x86"

DEPEND=">=dev-lang/mono-1.0"

S="${WORKDIR}/${P}"

src_compile() {
	econf || die "configure failed"
	sed -e s/-lstdc++// -i.bak src/FlaimProvider/FlaimWrapper/Makefile
	emake -j 1 || die "make failed"
	cd other/SimpleServer
	emake -j 1 || die "making SimpleServer failed"
}

src_install() {
	emake DESTDIR=${D} install || die "make install failed!"
	cd other/SimpleServer
	cp ${FILESDIR}/SimpleServer.xml ./
	emake DESTDIR=${D} install || die "SimpleServer make install failed!"
}

pkg_postinst() {
	enewgroup simias
	enewuser simias	-1 -1 -1 simias
}
