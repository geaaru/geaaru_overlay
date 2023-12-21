# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="flit"
inherit distutils-r1

DESCRIPTION="A non-validating SQL parser."
HOMEPAGE=" https://pypi.org/project/sqlparse/"
SRC_URI="https://files.pythonhosted.org/packages/65/16/10f170ec641ed852611b6c9441b23d10b5702ab5288371feab3d36de2574/sqlparse-0.4.4.tar.gz -> sqlparse-0.4.4.tar.gz"

DEPEND="
	dev-python/flit_core[${PYTHON_USEDEP}]
	dev-python/flake8[${PYTHON_USEDEP}]"
RDEPEND="dev-python/flake8[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/sqlparse-0.4.4"