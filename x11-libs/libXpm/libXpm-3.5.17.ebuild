# Distributed under the terms of the GNU General Public License v2

EAPI=7

XORG_MULTILIB=no
XORG_TARBALL_SUFFIX=xz
inherit xorg-3

DESCRIPTION="X.Org Xpm library"
SRC_URI="https://www.x.org/releases/individual/lib/libXpm-3.5.17.tar.xz -> libXpm-3.5.17.tar.xz"

KEYWORDS="*"
IUSE=""

RDEPEND=">=x11-libs/libX11-1.6.2
	>=x11-libs/libXext-1.3.2
	>=x11-libs/libXt-1.1.4"
DEPEND="${RDEPEND}
	sys-devel/gettext
	x11-base/xorg-proto"