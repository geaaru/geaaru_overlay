# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cmake

DESCRIPTION="Ultralightweight JSON parser in ANSI C"
HOMEPAGE="https://github.com/DaveGamble/cJSON"
SRC_URI="https://github.com/DaveGamble/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""
RESTRICT=""

src_prepare() {
	cmake_src_prepare

	sed -i -e '/-Werror/d' CMakeLists.txt || die
}

src_configure() {
	local mycmakeargs=(
		-DENABLE_CJSON_TEST=false
	)

	cmake_src_configure
}
