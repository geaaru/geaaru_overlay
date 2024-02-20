# Distributed under the terms of the GNU General Public License v2

EAPI=7
XORG_TARBALL_SUFFIX="gz"

inherit xorg-3 meson

DESCRIPTION="X.Org xcvt library and cvt program"
SRC_URI="https://gitlab.freedesktop.org/api/v4/projects/9338/repository/archive.tar.bz2?sha=f91e48c045aeeb58263cf7941625ae0fad430c7d -> libxcvt-0.1.2-f91e48c.tar.bz2"

LICENSE="BSD"
SLOT="0"
KEYWORDS="*"

DEPEND=""
RDEPEND="${DEPEND}
	!<=x11-base/xorg-server-1.20.11
"

post_src_unpack() {
	mv ${PN}-* "${S}"
}

# Override xorg-3's src_prepare
src_prepare() {
	default
}

src_install() {
	meson_src_install
}