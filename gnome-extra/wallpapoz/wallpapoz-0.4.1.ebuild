# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit eutils

DESCRIPTION="GNOME multi background and wallpaper configuration tool"
HOMEPAGE="http://wallpapoz.sourceforge.net/"
SRC_URI="http://wallpapoz.akbarhome.com/files/${P}.tar.bz2"
LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

RDEPEND="|| (
	x11-apps/xprop
	<virtual/x11-7 )
	dev-python/pygtk
	>=gnome-base/control-center-2"

src_install() {
	exeinto /usr/share/${PN}/src
	doexe src/* || die "doexe failed"

	insinto /usr/share/${PN}/share/${PN}
	doins share/${PN}/* || die "doins failed"

	make_wrapper ${PN} ./${PN}.py /usr/share/${PN}/src
	make_wrapper daemon_${PN} ./daemon_${PN}.py /usr/share/${PN}/src

	doicon share/${PN}/glade/${PN}.png
	make_desktop_entry ${PN} Wallpapoz ${PN}.png Utility

	dodoc AUTHORS NEWS README
}
