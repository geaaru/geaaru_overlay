# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Pure python memcached client"
HOMEPAGE="https://github.com/linsomniac/python-memcached https://pypi.org/project/python-memcached/"
SRC_URI="https://files.pythonhosted.org/packages/ad/35/81e57118edda2a4b565199ac5a1949e82ef02f524d618e3d65f5ec878c3b/python-memcached-1.61.tar.gz -> python-memcached-1.61.tar.gz"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
RDEPEND="dev-python/six[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/python-memcached-1.61"