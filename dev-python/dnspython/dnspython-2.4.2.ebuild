# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="DNS toolkit"
HOMEPAGE="https://www.dnspython.org https://pypi.org/project/dnspython/"
SRC_URI="https://files.pythonhosted.org/packages/65/2d/372a20e52a87b2ba0160997575809806111a72e18aa92738daccceb8d2b9/dnspython-2.4.2.tar.gz -> dnspython-2.4.2.tar.gz"

DEPEND="$(python_gen_cond_dep 'dev-python/cryptography[${PYTHON_USEDEP}] dev-python/idna[${PYTHON_USEDEP}]' -3)"
RDEPEND="$(python_gen_cond_dep 'dev-python/cryptography[${PYTHON_USEDEP}] dev-python/idna[${PYTHON_USEDEP}]' -3)"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/dnspython-2.4.2"