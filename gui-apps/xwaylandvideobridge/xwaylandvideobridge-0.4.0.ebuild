# Distributed under the terms of the GNU General Public License v2

EAPI=7

KDE_ORG_CATEGORY="system"
inherit kde5

DESCRIPTION="Screenshare Wayland windows to XWayland apps"
HOMEPAGE="https://github.com/KDE/xwaylandvideobridge https://invent.kde.org/system/xwaylandvideobridge"
SRC_URI="https://github.com/KDE/xwaylandvideobridge/tarball/4631de1da7e8ed299c049efd5e0bdaf373cfa546 -> xwaylandvideobridge-0.4.0-4631de1.tar.gz"
KEYWORDS="*"

LICENSE="GPL-2+"
SLOT="0"

DEPEND="
	dev-qt/qtdeclarative:5
	kde-frameworks/kcoreaddons:5
	kde-frameworks/ki18n:5
	kde-frameworks/knotifications:5
	kde-frameworks/kwindowsystem:5[X]
	kde-plasma/kpipewire:5
	media-libs/freetype
	x11-libs/libxcb:=
	x11-libs/xcb-util
"
RDEPEND="${DEPEND}"
BDEPEND="virtual/pkgconfig"

post_src_unpack() {
	mv KDE-${PN}-* "${S}"
}