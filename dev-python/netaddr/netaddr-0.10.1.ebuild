# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="A network address manipulation library for Python"
HOMEPAGE="https://github.com/drkjam/netaddr/ https://pypi.org/project/netaddr/"
SRC_URI="https://files.pythonhosted.org/packages/af/96/f4878091248450bbdebfbd01bf1d95821bd47eb38e756815a0431baa6b07/netaddr-0.10.1.tar.gz -> netaddr-0.10.1.tar.gz"

DEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
	dev-python/setuptools[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="BSD MIT"
KEYWORDS="*"
S="${WORKDIR}/netaddr-0.10.1"