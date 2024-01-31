# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="DNS toolkit"
HOMEPAGE=" https://pypi.org/project/dnspython/"
SRC_URI="https://files.pythonhosted.org/packages/65/51/fbffab4071afa789e515421e5749146beff65b3d371ff30d861e85587306/dnspython-2.5.0.tar.gz -> dnspython-2.5.0.tar.gz"

DEPEND="$(python_gen_cond_dep 'dev-python/cryptography[${PYTHON_USEDEP}] dev-python/idna[${PYTHON_USEDEP}]' -3)"
RDEPEND="$(python_gen_cond_dep 'dev-python/cryptography[${PYTHON_USEDEP}] dev-python/idna[${PYTHON_USEDEP}]' -3)"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/dnspython-2.5.0"