# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="flit"
inherit distutils-r1

DESCRIPTION="Run a subprocess in a pseudo terminal"
HOMEPAGE="https://github.com/pexpect/ptyprocess https://pypi.org/project/ptyprocess/"
SRC_URI="https://files.pythonhosted.org/packages/20/e5/16ff212c1e452235a90aeb09066144d0c5a6a8c0834397e03f5224495c4e/ptyprocess-0.7.0.tar.gz -> ptyprocess-0.7.0.tar.gz"

DEPEND="dev-python/flit_core[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/ptyprocess-0.7.0"