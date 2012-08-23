# ==========================================================================
# This ebuild come from fantoo repository. Zugaina.org only host a copy.
# For more info go to http://gentoo.zugaina.org/
# ***************** General Portage Overlay (11/20/06) *****************
# ==========================================================================
# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit gnome2 mono

DESCRIPTION="Novell iFolder"
HOMEPAGE="http://www.ifolder.com/"
SRC_URI="http://forgeftp.novell.com/ifolder/client/released/20050908_1424/source/${PN}3-${PV}.tar.gz"
S="${WORKDIR}/ifolder3-${PV}"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="x86 ~ppc"

IUSE=""
DEPEND=">=dev-lang/mono-1.0
	>=dev-dotnet/gconf-sharp-1.0.4
	>=dev-dotnet/gnome-sharp-1.0.4
	>=dev-dotnet/gtk-sharp-1.0
	>=dev-dotnet/simias-1.0"

src_compile() {
	econf
        emake -j1 ||  die "compile failure"
}

src_install() {
	make DESTDIR=${D} install || die
	dodoc INSTALL NEWS README
}
