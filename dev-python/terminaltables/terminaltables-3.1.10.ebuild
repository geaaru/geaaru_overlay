# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="poetry"
inherit distutils-r1

DESCRIPTION="Generate simple tables in terminals from a nested list of strings."
HOMEPAGE="https://github.com/matthewdeanmartin/terminaltables https://pypi.org/project/terminaltables/"
SRC_URI="https://files.pythonhosted.org/packages/f5/fc/0b73d782f5ab7feba8d007573a3773c58255f223c5940a7b7085f02153c3/terminaltables-3.1.10.tar.gz -> terminaltables-3.1.10.tar.gz"

DEPEND="dev-python/poetry-core[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/terminaltables-3.1.10"

src_prepare() {
	sed -e '/requires/s:poetry:&-core:' \
		-e '/backend/s:poetry:&.core:' \
		-i pyproject.toml || die

	# Fix terminal_io.py
	sed -e 's|sys.stdout.write|sys.stdout.buffer.write|g' \
		-i terminaltables/terminal_io.py || die

	distutils-r1_src_prepare
}
