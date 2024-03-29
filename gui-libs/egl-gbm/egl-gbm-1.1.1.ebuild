# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit meson

DESCRIPTION="GBM EGL external platform library"
HOMEPAGE="https://github.com/NVIDIA/egl-gbm/"
SRC_URI="https://github.com/NVIDIA/egl-gbm/tarball/b7d9f41a959c00d83d948ec1a17a287f3ce7f9aa -> egl-gbm-1.1.1-b7d9f41.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"

RDEPEND="
	media-libs/mesa[gbm(+)]
	x11-libs/libdrm
	!<x11-drivers/nvidia-drivers-495.46-r20[wayland(-)]
"
DEPEND="
	${RDEPEND}
	gui-libs/eglexternalplatform
	media-libs/libglvnd
"

post_src_unpack() {
	mv NVIDIA-${PN}-* "${S}"
}

src_install() {
	meson_src_install

	insinto /usr/share/egl/egl_external_platform.d
	doins "${FILESDIR}"/15_nvidia_gbm.json
}

# vim: filetype=ebuild