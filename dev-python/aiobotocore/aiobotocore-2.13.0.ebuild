# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Async client for aws services using botocore and aiohttp"
HOMEPAGE="https://github.com/aio-libs/aiobotocore https://pypi.org/project/aiobotocore/"
SRC_URI="https://files.pythonhosted.org/packages/cb/6e/a8a789ca71b637706f4031f78acefa6179b75eb0272ed395176f075e2259/aiobotocore-2.13.0.tar.gz -> aiobotocore-2.13.0.tar.gz"

DEPEND=""
RDEPEND="
	dev-python/aiohttp[${PYTHON_USEDEP}]
	dev-python/aioitertools[${PYTHON_USEDEP}]
	dev-python/botocore[${PYTHON_USEDEP}]
	dev-python/wrapt[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/aiobotocore-2.13.0"