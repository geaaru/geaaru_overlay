# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Kafka integration with asyncio"
HOMEPAGE=" https://pypi.org/project/aiokafka/"
SRC_URI="https://files.pythonhosted.org/packages/7c/f9/085b37eb3819556713a7cfc9f3b3f7a2c3c1bc0c8f2809b230c7f00ee26c/aiokafka-0.10.0.tar.gz -> aiokafka-0.10.0.tar.gz"

DEPEND="
	dev-python/kafka-python[${PYTHON_USEDEP}]
	dev-python/setuptools[${PYTHON_USEDEP}]"
RDEPEND="dev-python/kafka-python[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/aiokafka-0.10.0"