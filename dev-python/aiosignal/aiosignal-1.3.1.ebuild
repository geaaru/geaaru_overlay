# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="aiosignal: a list of registered asynchronous callbacks"
HOMEPAGE="https://github.com/aio-libs/aiosignal https://pypi.org/project/aiosignal/"
SRC_URI="https://files.pythonhosted.org/packages/ae/67/0952ed97a9793b4958e5736f6d2b346b414a2cd63e82d05940032f45b32f/aiosignal-1.3.1.tar.gz -> aiosignal-1.3.1.tar.gz"

DEPEND=""
RDEPEND="dev-python/frozenlist[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/aiosignal-1.3.1"