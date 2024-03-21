# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Wrapper for HTML Tidy"
HOMEPAGE="https://github.com/nijel/utidylib https://pypi.org/project/uTidylib/"
SRC_URI="https://files.pythonhosted.org/packages/60/3b/7e5d9f84fc7abc031290b8c277ee55a7009f9f3f3c8e15ab8be76a01c266/uTidylib-0.10.tar.gz -> uTidylib-0.10.tar.gz"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
RDEPEND="app-text/tidy-html5"
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/utidylib-0.10"

post_src_unpack() {
	mv uTidylib-* "${S}"
}
