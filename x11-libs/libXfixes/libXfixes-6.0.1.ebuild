# Distributed under the terms of the GNU General Public License v2

EAPI=7

XORG_MULTILIB=yes
XORG_TARBALL_SUFFIX=xz
inherit xorg-3

DESCRIPTION="X.Org Xfixes library"
SRC_URI="https://www.x.org/releases/individual/lib/libXfixes-6.0.1.tar.xz -> libXfixes-6.0.1.tar.xz"

KEYWORDS="*"
IUSE=""

RDEPEND="x11-base/xorg-proto
	>=x11-libs/libX11-1.6.2[${MULTILIB_USEDEP}]"
DEPEND="${RDEPEND}"