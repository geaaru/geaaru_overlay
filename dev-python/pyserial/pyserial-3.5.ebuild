# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Python Serial Port Extension"
HOMEPAGE="https://github.com/pyserial/pyserial https://pypi.org/project/pyserial/"
SRC_URI="https://files.pythonhosted.org/packages/1e/7d/ae3f0a63f41e4d2f6cb66a5b57197850f919f59e558159a4dd3a818f5082/pyserial-3.5.tar.gz -> pyserial-3.5.tar.gz"

DEPEND="$(python_gen_cond_dep 'dev-python/setuptools[${PYTHON_USEDEP}]' -3)"
IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/pyserial-3.5"