# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Additional functions used by other projects by developer jaraco"
HOMEPAGE="None https://pypi.org/project/jaraco.functools/"
SRC_URI="https://files.pythonhosted.org/packages/bc/66/746091bed45b3683d1026cb13b8b7719e11ccc9857b18d29177a18838dc9/jaraco_functools-4.0.1.tar.gz -> jaraco_functools-4.0.1.tar.gz"

DEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
	dev-python/more-itertools[${PYTHON_USEDEP}]
	dev-python/namespace-jaraco[${PYTHON_USEDEP}]"
RDEPEND="
	dev-python/more-itertools[${PYTHON_USEDEP}]
	dev-python/namespace-jaraco[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/jaraco_functools-4.0.1"

post_src_unpack() {
	mv jaraco.functools-* "${S}"
}
