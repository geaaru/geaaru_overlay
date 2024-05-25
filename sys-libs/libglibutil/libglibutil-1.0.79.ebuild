# Distributed under the terms of the GNU General Public License v2

EAPI=7
AUTOTOOLS_AUTO_DEPEND="no"

inherit autotools toolchain-funcs

DESCRIPTION="Library of glib utilities"
HOMEPAGE="https://github.com/sailfishos/libglibutil"
SRC_URI="https://github.com/sailfishos/libglibutil/tarball/7df665e17f00345ff2cbd12452a0bf67e203dccd -> libglibutil-1.0.79-7df665e.tar.gz"

LICENSE="BSD-3-Clause"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND=""
RDEPEND=""

post_src_unpack() {
	mv sailfishos-${PN}-* "${S}"
}

src_prepare() {
	default
}

src_compile() {
	emake LIBDIR=/usr/$(get_libdir)
}

src_install() {
	# Using install-dev instead of install to
	# install includes files too.
	emake install-dev LIBDIR=/usr/$(get_libdir) DESTDIR="${D}"

	dodir /usr/share/pkgconfig
	insinto /usr/share/pkgconfig
	newins "${S}"/build/${PN}.pc "${PN}.pc"
}