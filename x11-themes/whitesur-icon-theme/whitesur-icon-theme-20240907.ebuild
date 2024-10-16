# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit gnome3-utils xdg

DESCRIPTION="MacOS Big Sur style icon theme for linux desktops"
HOMEPAGE="https://github.com/vinceliuice/WhiteSur-icon-theme"
SRC_URI="https://github.com/vinceliuice/WhiteSur-icon-theme/tarball/5a1cc2096c56f3399cb21fb795519879e103be74 -> WhiteSur-icon-theme-20240907-5a1cc20.tar.gz"


LICENSE="GPL-3.0"
SLOT="0"
KEYWORDS="*"
IUSE="alternative bold"

RDEPEND="dev-libs/libxml2:2
	x11-libs/gtk+:3
	x11-themes/gtk-engines-murrine"

DEPEND="${RDEPEND}
	dev-libs/glib:2
	dev-lang/sassc
	x11-libs/gdk-pixbuf:2"

post_src_unpack() {
	mv vinceliuice-WhiteSur-icon-theme-* ${S}
}

src_configure() {
	default
}

src_install() {
	local args=()

	if use bold ; then
		args+=(
			-b
		)
	fi

	${S}/install.sh -n WhiteSur -d ${D}/usr/share/icons ${args[@]}

	if use alternative ; then
		${S}/install.sh -a -n WhiteSur-Alternative -d ${D}/usr/share/icons ${args[@]}
	fi
}

pkg_postinst() {
	xdg_pkg_postinst
	gnome3_gconf_install
	gnome3_gdk_pixbuf_update
}

pkg_postrm() {
	xdg_pkg_postrm
}

# vim: filetype=ebuild