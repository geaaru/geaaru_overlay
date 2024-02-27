# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit meson

DESCRIPTION="EGLStream-based Wayland external platform"
HOMEPAGE="https://github.com/NVIDIA/egl-wayland/"
SRC_URI="https://github.com/NVIDIA/egl-wayland/tarball/69ae9cf07bbec3b00a682918bf0dc845e9896771 -> egl-wayland-1.1.13-69ae9cf.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"

RDEPEND="
	dev-libs/wayland
	x11-libs/libdrm
	!<x11-drivers/nvidia-drivers-470.57.02[wayland(-)]
"
DEPEND="
	${RDEPEND}
	dev-libs/wayland-protocols
	gui-libs/eglexternalplatform
	media-libs/libglvnd
"
BDEPEND="dev-util/wayland-scanner"
PATCHES=(
	"${FILESDIR}"/"${PN}-1.1.6-remove-werror.patch"
)

post_src_unpack() {
	mv NVIDIA-${PN}-* "${S}"
}
