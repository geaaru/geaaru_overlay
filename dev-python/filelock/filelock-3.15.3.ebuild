# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="hatchling"
inherit distutils-r1

DESCRIPTION="A platform independent file lock."
HOMEPAGE="None https://pypi.org/project/filelock/"
SRC_URI="https://files.pythonhosted.org/packages/7d/98/6e68cf474669042ba6ba0a7761b8be04beb8131b366d5c6b1596f8cdfec2/filelock-3.15.3.tar.gz -> filelock-3.15.3.tar.gz"

DEPEND="$(python_gen_cond_dep 'dev-python/hatch-vcs[${PYTHON_USEDEP}]' -3)"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/filelock-3.15.3"