# Copyright 2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit linux-mod toolchain-funcs

DESCRIPTION="A memory analysis tool for Linux"
HOMEPAGE="http://www.berthels.co.uk/exmap/"
SRC_URI="http://www.berthels.co.uk/exmap/download/${P}.tgz"

IUSE=""

KEYWORDS="~amd64"
LICENSE="GPL-2"
SLOT="0"

DEPEND=">=dev-cpp/gtkmm-2.4"
RDEPEND="${DEPEND}"
DEPEND="${DEPEND}
	dev-util/pkgconfig
	dev-libs/libpcre
	dev-libs/boost"

pkg_setup() {
	linux-mod_pkg_setup

	MODULE_NAMES="exmap(misc:${S}/kernel)"
}

src_unpack() {
	unpack ${A}
	cd "${S}"

	epatch "${FILESDIR}/${P}-nowerror.patch" \
		"${FILESDIR}/${P}-no_libs_on_ldflags.patch" \
		"${FILESDIR}/${P}-nodebug.patch" \
		"${FILESDIR}/${P}-gmake.patch"
}

src_compile() {
	emake \
		ARCH="$(tc-arch-kernel)" \
		CXX="$(tc-getCXX)" \
		CC="$(tc-getCC)" \
		|| die "emake failed"
}

src_install() {
	linux-mod_src_install

	dobin src/gexmap

	dodoc TODO README
}

pkg_postinst() {
	linux-mod_pkg_postinst

	elog "Now load the exmap kernel module by running:"
	elog "  # modprobe exmap"
	elog "and then run the gexmap tool"
}
