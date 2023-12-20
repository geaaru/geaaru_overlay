# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Pure python memcached client"
HOMEPAGE="https://github.com/linsomniac/python-memcached https://pypi.org/project/python-memcached/"
SRC_URI="https://files.pythonhosted.org/packages/90/59/5faf6e3cd8a568dd4f737ddae4f2e54204fd8c51f90bf8df99aca6c22318/python-memcached-1.59.tar.gz -> python-memcached-1.59.tar.gz"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
RDEPEND="dev-python/six[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/python-memcached-1.59"