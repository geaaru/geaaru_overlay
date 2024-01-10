# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Proxy connector for aiohttp"
HOMEPAGE="https://github.com/romis2012/aiohttp-socks https://pypi.org/project/aiohttp-socks/"
SRC_URI="https://files.pythonhosted.org/packages/22/be/df389469083cba73df69d1cef68056d7ce2bda76ced3d023dd75493558f5/aiohttp_socks-0.8.4.tar.gz -> aiohttp_socks-0.8.4.tar.gz"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/aiohttp_socks-0.8.4"