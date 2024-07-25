# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="hatchling"
inherit distutils-r1

DESCRIPTION="Virtual Python Environment builder"
HOMEPAGE="None https://pypi.org/project/virtualenv/"
SRC_URI="https://files.pythonhosted.org/packages/68/60/db9f95e6ad456f1872486769c55628c7901fb4de5a72c2f7bdd912abf0c1/virtualenv-20.26.3.tar.gz -> virtualenv-20.26.3.tar.gz"

DEPEND="$(python_gen_cond_dep 'dev-python/hatch-vcs[${PYTHON_USEDEP}]' -3)"
RDEPEND="$(python_gen_cond_dep 'dev-python/distlib[${PYTHON_USEDEP}] dev-python/filelock[${PYTHON_USEDEP}] dev-python/platformdirs[${PYTHON_USEDEP}]' -3)"
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/virtualenv-20.26.3"