# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Pure Python client for Apache Kafka"
HOMEPAGE="https://github.com/dpkp/kafka-python https://pypi.org/project/kafka-python/"
SRC_URI="https://files.pythonhosted.org/packages/07/4c/2595fb5733c3ac01aef3dacce17ff07f7f3336d9f96548bcf723b9073e5c/kafka-python-2.0.2.tar.gz -> kafka-python-2.0.2.tar.gz"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/kafka-python-2.0.2"