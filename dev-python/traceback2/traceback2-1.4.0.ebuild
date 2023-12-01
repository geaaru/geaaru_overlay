# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Backports of the traceback module"
HOMEPAGE="https://github.com/testing-cabal/traceback2 https://pypi.org/project/traceback2/"
SRC_URI="https://files.pythonhosted.org/packages/eb/7f/e20ba11390bdfc55117c8c6070838ec914e6f0053a602390a598057884eb/traceback2-1.4.0.tar.gz -> traceback2-1.4.0.tar.gz"

DEPEND="$(python_gen_cond_dep 'dev-python/pbr[${PYTHON_USEDEP}] dev-python/setuptools[${PYTHON_USEDEP}]' -3)"
RDEPEND="$(python_gen_cond_dep 'dev-python/linecache2[${PYTHON_USEDEP}]' -3)"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/traceback2-1.4.0"