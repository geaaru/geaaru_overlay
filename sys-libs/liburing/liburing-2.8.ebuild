# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit multilib-minimal toolchain-funcs

DESCRIPTION="Efficient I/O with io_uring"
HOMEPAGE="https://github.com/axboe/liburing"
SRC_URI="https://github.com/axboe/liburing/tarball/7a7b035470175b3ecf071384274d7859885ece32 -> liburing-2.8-7a7b035.tar.gz"
KEYWORDS="*"
QA_PKGCONFIG_VERSION=${PV}
LICENSE="MIT"
SLOT="0"

IUSE="examples static-libs"

# At least installed headers need <linux/*>, bug #802516
DEPEND=">=sys-kernel/linux-headers-5.1"
RDEPEND="${DEPEND}"

PATCHES=(
	# https://bugs.gentoo.org/891633
	"${FILESDIR}/${PN}-2.3-liburing.map-Export-io_uring_-enable_rings-register_.patch"
	# https://github.com/axboe/liburing/pull/787
	#"${FILESDIR}/${PN}-2.3-remove-error-from-error_h-for-portability.patch"
)

post_src_unpack() {
	mv axboe-liburing-* "${S}"
}

src_prepare() {
	default

	if ! use examples; then
		sed -e '/examples/d' Makefile -i || die
	fi
	sed -e '/test/d' Makefile -i || die

	multilib_copy_sources
}

multilib_src_configure() {
	local myconf=(
		--prefix="${EPREFIX}/usr"
		--libdir="${EPREFIX}/usr/$(get_libdir)"
		--libdevdir="${EPREFIX}/usr/$(get_libdir)"
		--mandir="${EPREFIX}/usr/share/man"
		--cc="$(tc-getCC)"
		--cxx="$(tc-getCXX)"
	)
	# No autotools configure! "econf" will fail.
	TMPDIR="${T}" ./configure "${myconf[@]}" || die
}

multilib_src_compile() {
	emake V=1 AR="$(tc-getAR)" RANLIB="$(tc-getRANLIB)"
}

multilib_src_install_all() {
	einstalldocs

	if ! use static-libs ; then
		find "${ED}" -type f -name "*.a" -delete || die
	fi
}

# vim: filetype=ebuild