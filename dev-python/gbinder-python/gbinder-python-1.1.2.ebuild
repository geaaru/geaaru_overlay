# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Python bindings for libgbinder"
HOMEPAGE="https://github.com/erfanoabdi/gbinder-python"
SRC_URI="https://github.com/erfanoabdi/gbinder-python/tarball/a2c5093c734e59df9f592010020cf081dadce81f -> gbinder-python-1.1.2-a2c5093.tar.gz"

DEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
	dev-python/cython[${PYTHON_USEDEP}]
	sys-libs/libgbinder
"
RDEPEND="
	sys-libs/libgbinder
"
IUSE=""
SLOT="0"
LICENSE="GPL-3.0"
KEYWORDS="*"

post_src_unpack() {
	mv *-gbinder-python-* "${S}"
}

python_configure_all() {
	local -x CYTHON_FORCE_REGEN=1
	find -name '*.pyx' -exec touch {} + || die
	DISTUTILS_ARGS=( --cython )
}
