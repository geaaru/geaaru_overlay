# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Python client for the Prometheus monitoring system."
HOMEPAGE="https://github.com/prometheus/client_python https://pypi.org/project/prometheus-client/"
SRC_URI="https://files.pythonhosted.org/packages/98/71/2f16cce64055263146eff950affe7b1ab2ff78736ff0d2b5578bc0817e49/prometheus_client-0.14.1.tar.gz
"

DEPEND=""
RDEPEND="dev-python/twisted[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"

S="${WORKDIR}/prometheus_client-0.14.1"