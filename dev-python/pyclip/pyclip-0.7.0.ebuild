# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Cross-platform Clipboard module for Python with binary support"
HOMEPAGE="https://github.com/spyoungtech/pyclip https://pypi.org/project/pyclip/"
SRC_URI="https://files.pythonhosted.org/packages/65/8a/98ed02d81dea4b2211a4746724d7a271264b701c991fed503c246de52864/pyclip-0.7.0.tar.gz -> pyclip-0.7.0.tar.gz"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/pyclip-0.7.0"

src_prepare() {
	# Fix README.md path.
	sed -i -e 's|docs/README.md|README.md|g' setup.py

	default
}
