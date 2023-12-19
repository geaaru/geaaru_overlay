# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="A network address manipulation library for Python"
HOMEPAGE="https://github.com/drkjam/netaddr/ https://pypi.org/project/netaddr/"
SRC_URI="https://files.pythonhosted.org/packages/48/4c/2491bfdb868c3f40d985037fa64a3903c125f45d7d3025640e05715db7a3/netaddr-0.9.0.tar.gz -> netaddr-0.9.0.tar.gz"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="BSD MIT"
KEYWORDS="*"
S="${WORKDIR}/netaddr-0.9.0"