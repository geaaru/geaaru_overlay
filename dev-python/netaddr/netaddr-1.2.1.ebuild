# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="A network address manipulation library for Python"
HOMEPAGE=" https://pypi.org/project/netaddr/"
SRC_URI="https://files.pythonhosted.org/packages/54/e6/0308695af3bd001c7ce503b3a8628a001841fe1def19374c06d4bce9089b/netaddr-1.2.1.tar.gz -> netaddr-1.2.1.tar.gz"

DEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
	dev-python/setuptools[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/netaddr-1.2.1"