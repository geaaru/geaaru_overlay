# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="hatchling"
inherit distutils-r1

DESCRIPTION="A non-validating SQL parser."
HOMEPAGE="None https://pypi.org/project/sqlparse/"
SRC_URI="https://files.pythonhosted.org/packages/50/26/5da251cd090ccd580f5cfaa7d36cdd8b2471e49fffce60ed520afc27f4bc/sqlparse-0.5.0.tar.gz -> sqlparse-0.5.0.tar.gz"

DEPEND="
	$(python_gen_cond_dep 'dev-python/hatch-vcs[${PYTHON_USEDEP}]' -3)
	dev-python/flake8[${PYTHON_USEDEP}]"
RDEPEND="dev-python/flake8[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/sqlparse-0.5.0"