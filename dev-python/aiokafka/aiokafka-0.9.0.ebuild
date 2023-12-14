# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Kafka integration with asyncio"
HOMEPAGE=" https://pypi.org/project/aiokafka/"
SRC_URI="https://files.pythonhosted.org/packages/88/69/cafa02d766547dc04557eab3b119ae0b1056dd851806027147a89dab4a1c/aiokafka-0.9.0.tar.gz -> aiokafka-0.9.0.tar.gz"

DEPEND="
	dev-python/kafka-python[${PYTHON_USEDEP}]
	dev-python/setuptools[${PYTHON_USEDEP}]"
RDEPEND="dev-python/kafka-python[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/aiokafka-0.9.0"