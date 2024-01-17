# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Pure python memcached client"
HOMEPAGE="https://github.com/linsomniac/python-memcached https://pypi.org/project/python-memcached/"
SRC_URI="https://files.pythonhosted.org/packages/e8/3c/204e5c6087efc85b52a68edce8678d44eb28718f5f145e036c277beb467c/python-memcached-1.62.tar.gz -> python-memcached-1.62.tar.gz"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
RDEPEND="dev-python/six[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/python-memcached-1.62"