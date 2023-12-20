# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Object-oriented filesystem paths"
HOMEPAGE="https://github.com/jazzband/pathlib2 https://pypi.org/project/pathlib2/"
SRC_URI="https://files.pythonhosted.org/packages/31/51/99caf463dc7c18eb18dad1fffe465a3cf3ee50ac3d1dccbd1781336fe9c7/pathlib2-2.3.7.post1.tar.gz -> pathlib2-2.3.7.post1.tar.gz"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
RDEPEND="dev-python/six[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/pathlib2-2.3.7.post1"