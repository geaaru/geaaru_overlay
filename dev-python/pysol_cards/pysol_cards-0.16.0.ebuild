# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Deal PySol FreeCell cards"
HOMEPAGE="https://github.com/shlomif/pysol_cards https://pypi.org/project/pysol-cards/"
SRC_URI="https://files.pythonhosted.org/packages/de/95/3ae0e46a67f1c687adae77a8934930aa9dbed367bc58bcff305991e061fa/pysol_cards-0.16.0.tar.gz -> pysol_cards-0.16.0.tar.gz"

DEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
	dev-python/six[${PYTHON_USEDEP}]"
RDEPEND="
	dev-python/random2[${PYTHON_USEDEP}]
	dev-python/six[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="Apache-2.0 MIT"
KEYWORDS="*"
S="${WORKDIR}/pysol_cards-0.16.0"