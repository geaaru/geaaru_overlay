# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="hatchling"
inherit distutils-r1

DESCRIPTION="Virtual Python Environment builder"
HOMEPAGE=" https://pypi.org/project/virtualenv/"
SRC_URI="https://files.pythonhosted.org/packages/93/4f/a7737e177ab67c454d7e60d48a5927f16cd05623e9dd888f78183545d250/virtualenv-20.25.1.tar.gz -> virtualenv-20.25.1.tar.gz"

DEPEND="$(python_gen_cond_dep 'dev-python/hatch-vcs[${PYTHON_USEDEP}]' -3)"
RDEPEND="$(python_gen_cond_dep 'dev-python/distlib[${PYTHON_USEDEP}] dev-python/filelock[${PYTHON_USEDEP}] dev-python/platformdirs[${PYTHON_USEDEP}]' -3)"
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/virtualenv-20.25.1"