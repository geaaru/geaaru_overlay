# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Kafka integration with asyncio"
HOMEPAGE="None https://pypi.org/project/aiokafka/"
SRC_URI="https://files.pythonhosted.org/packages/bc/1c/654b955dcca965003f04703caea15a826be0b60bb4c3d064cbd6565c31a1/aiokafka-0.11.0.tar.gz -> aiokafka-0.11.0.tar.gz"

DEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
	dev-python/kafka-python[${PYTHON_USEDEP}]"
RDEPEND="dev-python/kafka-python[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/aiokafka-0.11.0"