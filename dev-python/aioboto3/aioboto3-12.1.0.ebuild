# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Async boto3 wrapper"
HOMEPAGE="https://github.com/terrycain/aioboto3 https://pypi.org/project/aioboto3/"
SRC_URI="https://files.pythonhosted.org/packages/ff/44/b152ccf860328299c84ca2f0a9b74d3cabf8a7a5345eac7ea33359b5a6c3/aioboto3-12.1.0.tar.gz -> aioboto3-12.1.0.tar.gz"

DEPEND=""
RDEPEND="dev-python/aiobotocore[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/aioboto3-12.1.0"