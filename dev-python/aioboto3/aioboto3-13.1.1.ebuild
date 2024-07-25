# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Async boto3 wrapper"
HOMEPAGE="https://github.com/terrycain/aioboto3 https://pypi.org/project/aioboto3/"
SRC_URI="https://files.pythonhosted.org/packages/cc/91/57ba4d31fde7b26d47b0d14de7f75e34d9f4ace316c1036d1703b8fec8dd/aioboto3-13.1.1.tar.gz -> aioboto3-13.1.1.tar.gz"

DEPEND=""
RDEPEND="dev-python/aiobotocore[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/aioboto3-13.1.1"