# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Async client for aws services using botocore and aiohttp"
HOMEPAGE="https://github.com/aio-libs/aiobotocore https://pypi.org/project/aiobotocore/"
SRC_URI="https://files.pythonhosted.org/packages/7b/ea/5ee4b3d4dd6d6f7debc5aece4714915b0d3cd1988fb423151bf10d7ae5ce/aiobotocore-2.9.0.tar.gz -> aiobotocore-2.9.0.tar.gz"

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
S="${WORKDIR}/aiobotocore-2.9.0"