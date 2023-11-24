# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="hatchling"
inherit distutils-r1

DESCRIPTION="Virtual Python Environment builder"
HOMEPAGE=" https://pypi.org/project/virtualenv/"
SRC_URI="https://files.pythonhosted.org/packages/ac/fe/028d5b32d0a54fe3ecac1c170966757f185f84b81e06af98c820a546c691/virtualenv-20.24.7.tar.gz -> virtualenv-20.24.7.tar.gz"

DEPEND="$(python_gen_cond_dep 'dev-python/hatch-vcs[${PYTHON_USEDEP}]' -3)"
RDEPEND="$(python_gen_cond_dep 'dev-python/distlib[${PYTHON_USEDEP}] dev-python/filelock[${PYTHON_USEDEP}] dev-python/platformdirs[${PYTHON_USEDEP}]' -3)"
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/virtualenv-20.24.7"