# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit gnome3-utils xdg

DESCRIPTION="Pixel perfect icon theme for Linux"
HOMEPAGE="https://github.com/PapirusDevelopmentTeam/papirus-icon-theme"
SRC_URI="https://github.com/PapirusDevelopmentTeam/papirus-icon-theme/tarball/faedf29a09748d7e1370dffb143cd12ba0cdc219 -> papirus-icon-theme-20240501-faedf29.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="*"

post_src_unpack() {
	mv PapirusDevelopmentTeam-papirus-icon-theme-* "${S}"
}

src_compile() { :; }

src_install() {
	insinto /usr/share/icons
	doins -r ePapirus{,-Dark} Papirus{,-Dark,-Light}
}

pkg_postinst() { xdg_pkg_postinst; gnome3_gdk_pixbuf_update; }
pkg_postrm() { xdg_pkg_postrm; }

# vim: filetype=ebuild