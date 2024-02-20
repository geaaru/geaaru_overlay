# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
VIRTUALX_REQUIRED=manual

inherit meson python-any-r1 virtualx

DESCRIPTION="The GL Vendor-Neutral Dispatch library"
HOMEPAGE="https://gitlab.freedesktop.org/glvnd/libglvnd"
KEYWORDS="*"
SRC_URI="https://gitlab.freedesktop.org/glvnd/libglvnd/-/archive/v1.7.0/libglvnd-v1.7.0.tar.bz2 -> libglvnd-1.7.0.tar.bz2"
S=${WORKDIR}/${PN}-v${PV}

LICENSE="MIT"
SLOT="0"
IUSE="+asm +egl +gles +gles2 +glx +headers tls +X"

BDEPEND="${PYTHON_DEPS}"
RDEPEND="
	!media-libs/mesa[-libglvnd(+)]
	X? (
		x11-libs/libX11
		x11-libs/libXext
		x11-proto/glproto
	)"
DEPEND="${RDEPEND}
	X? ( x11-base/xorg-proto )"
PATCHES=(
	"${FILESDIR}"/"${PN}-1.7.0-backport-pr291.patch"
)


src_prepare() {
	default
	sed -i -e "/^PLATFORM_SYMBOLS/a \    '__gentoo_check_ldflags__'," bin/symbols-check.py || die
}

src_configure() {
	local emesonargs=(
		-Dasm=$(usex asm enabled disabled)
		-Degl=$(usex egl true false)
		-Dgles1=$(usex gles true false)
		-Dgles2=$(usex gles2 true false)
		-Dglx=$(usex glx enabled disabled)
		-Dheaders=$(usex headers true false)
		-Dtls=$(usex tls true false)
		-Dx11=$(usex X enabled disabled)
	)
	use elibc_musl && emesonargs+=( -Dtls=false )
	meson_src_configure
}

src_compile() {
	meson_src_compile
}

src_install() {
	meson_src_install
}