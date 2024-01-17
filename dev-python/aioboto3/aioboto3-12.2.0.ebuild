# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Async boto3 wrapper"
HOMEPAGE="https://github.com/terrycain/aioboto3 https://pypi.org/project/aioboto3/"
SRC_URI="https://files.pythonhosted.org/packages/52/c7/650132798695799f4de9f704183f145aee4e25760b2ffacc2d46a1782d89/aioboto3-12.2.0.tar.gz -> aioboto3-12.2.0.tar.gz"

DEPEND=""
RDEPEND="dev-python/aiobotocore[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/aioboto3-12.2.0"