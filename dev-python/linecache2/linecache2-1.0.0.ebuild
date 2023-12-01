# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Backports of the linecache module"
HOMEPAGE="https://github.com/testing-cabal/linecache2 https://pypi.org/project/linecache2/"
SRC_URI="https://files.pythonhosted.org/packages/44/b0/963c352372c242f9e40db02bbc6a39ae51bde15dddee8523fe4aca94a97e/linecache2-1.0.0.tar.gz -> linecache2-1.0.0.tar.gz"

DEPEND="$(python_gen_cond_dep 'dev-python/pbr[${PYTHON_USEDEP}] dev-python/setuptools[${PYTHON_USEDEP}]' -3)"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/linecache2-1.0.0"