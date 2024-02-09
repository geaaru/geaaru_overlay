# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Async boto3 wrapper"
HOMEPAGE="https://github.com/terrycain/aioboto3 https://pypi.org/project/aioboto3/"
SRC_URI="https://files.pythonhosted.org/packages/bf/42/139739b1b557c399005fa4e3f6108f193a8a6e3f45e89f6db7eb6e8d3a60/aioboto3-12.3.0.tar.gz -> aioboto3-12.3.0.tar.gz"

DEPEND=""
RDEPEND="dev-python/aiobotocore[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/aioboto3-12.3.0"