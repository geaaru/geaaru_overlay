# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cmake

DESCRIPTION="Tidy the layout and correct errors in HTML and XML documents"
HOMEPAGE="https://www.html-tidy.org/"
SRC_URI="https://github.com/htacg/tidy-html5/tarball/1ca37471b48a3498f985509828cb3cf85ea129f8 -> tidy-html5-5.8.0-1ca3747.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="*"
IUSE="deprecated"

DOCS=( README.md README/CHANGELOG.md )
PATCHES=(
	"${FILESDIR}"/"htmltidy-5.8.0-no_static_lib.patch"
	"${FILESDIR}"/"htmltidy-5.8.0-ol_type.patch"
)

post_src_unpack() {
	mv htacg-tidy-html5-* "${S}"
}

src_configure() {
	local mycmakeargs=(
		-DTIDY_CONSOLE_SHARED=ON
	)
	use deprecated && mycmakeargs+=(
		-DBUILD_TAB2SPACE=ON
		-DTIDY_COMPAT_HEADERS=ON
	)
	cmake_src_configure
}

src_install() {
	cmake_src_install
	use deprecated && dobin "${BUILD_DIR}"/tab2space
}