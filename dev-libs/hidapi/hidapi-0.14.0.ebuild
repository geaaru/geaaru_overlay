# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cmake-utils flag-o-matic

DESCRIPTION="A multi-platform library for USB and Bluetooth HID-Class devices"
HOMEPAGE="https://github.com/libusb/hidapi"
SRC_URI="https://github.com/libusb/hidapi/archive/${P}.tar.gz -> ${P}.tgz"
S="${WORKDIR}/${PN}-${P}"

LICENSE="|| ( BSD GPL-3 HIDAPI )"
SLOT="0"
KEYWORDS="*"
IUSE="doc"

DEPEND="
	virtual/libusb:1
	virtual/libudev:0
"
RDEPEND="${DEPEND}"
BDEPEND="doc? ( app-doc/doxygen )"

src_configure() {
	append-lfs-flags

	local mycmakeargs=(
		# Doesn't do anything as of 0.14.0
		-DHIDAPI_WITH_TESTS=OFF
	)

	cmake-utils_src_configure
}

src_compile() {
	cmake-utils_src_compile

	if use doc ; then
		cd "${S}/doxygen" || die
		doxygen Doxyfile || die
	fi
}

src_install() {
	cmake-utils_src_install

	if use doc ; then
		local HTML_DOCS=( "${S}/doxygen/html/." )
	fi
	einstalldocs
}
