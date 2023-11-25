# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="hatchling"
inherit distutils-r1

DESCRIPTION="A small Python package for determining appropriate platform-specific dirs"
HOMEPAGE=" https://pypi.org/project/platformdirs/"
SRC_URI="https://files.pythonhosted.org/packages/31/28/e40d24d2e2eb23135f8533ad33d582359c7825623b1e022f9d460def7c05/platformdirs-4.0.0.tar.gz -> platformdirs-4.0.0.tar.gz"

DEPEND="$(python_gen_cond_dep 'dev-python/hatch-vcs[${PYTHON_USEDEP}]' -3)"
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/platformdirs-4.0.0"