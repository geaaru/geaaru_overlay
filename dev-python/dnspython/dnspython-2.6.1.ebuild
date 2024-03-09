# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="DNS toolkit"
HOMEPAGE=" https://pypi.org/project/dnspython/"
SRC_URI="https://files.pythonhosted.org/packages/37/7d/c871f55054e403fdfd6b8f65fd6d1c4e147ed100d3e9f9ba1fe695403939/dnspython-2.6.1.tar.gz -> dnspython-2.6.1.tar.gz"

DEPEND="$(python_gen_cond_dep 'dev-python/cryptography[${PYTHON_USEDEP}] dev-python/idna[${PYTHON_USEDEP}]' -3)"
RDEPEND="$(python_gen_cond_dep 'dev-python/cryptography[${PYTHON_USEDEP}] dev-python/idna[${PYTHON_USEDEP}]' -3)"
IUSE=""
SLOT="0"
LICENSE="ISC"
KEYWORDS="*"
S="${WORKDIR}/dnspython-2.6.1"

src_prepare() {
	sed -i -e 's|^license =.*|license = {text = "ISC"}|g' pyproject.toml
	distutils-r1_src_prepare
}
