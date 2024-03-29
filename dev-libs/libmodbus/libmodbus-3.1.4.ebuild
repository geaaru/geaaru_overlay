# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Modbus library which supports RTU communication over a serial line or a TCP link"
HOMEPAGE="https://libmodbus.org/"
SRC_URI="https://libmodbus.org/releases/${P}.tar.gz"

LICENSE="LGPL-3"
SLOT="0"
KEYWORDS="*"
IUSE="static-libs test doc"

RDEPEND=""
DEPEND="doc? ( app-text/asciidoc
	app-text/xmlto )"

PATCHES=( "${FILESDIR}"/${P}-doc.patch )

src_configure() {
	econf \
		--disable-silent-rules \
		$(use_enable test tests) \
		$(use_enable static-libs static) \
		$(use_with doc documentation)
}

src_install() {
	default

	use static-libs || rm "${D}"/usr/*/libmodbus.la
}
