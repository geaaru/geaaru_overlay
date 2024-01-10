# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Measures the displayed width of unicode strings in a terminal"
HOMEPAGE="https://github.com/jquast/wcwidth https://pypi.org/project/wcwidth/"
SRC_URI="https://files.pythonhosted.org/packages/6c/63/53559446a878410fc5a5974feb13d31d78d752eb18aeba59c7fef1af7598/wcwidth-0.2.13.tar.gz -> wcwidth-0.2.13.tar.gz"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/wcwidth-0.2.13"

src_prepare() {
	sed -e 's:--cov-append::' \
		-e 's:--cov-report=html::' \
		-e 's:--cov=wcwidth::' \
		-i tox.ini || die
	distutils-r1_src_prepare
}
