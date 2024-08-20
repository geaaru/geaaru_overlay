# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Access the libmagic file type identification library"
HOMEPAGE="http://github.com/ahupp/python-magic https://pypi.org/project/python-magic/"
SRC_URI="https://files.pythonhosted.org/packages/da/db/0b3e28ac047452d079d375ec6798bf76a036a08182dbb39ed38116a49130/python-magic-0.4.27.tar.gz -> python-magic-0.4.27.tar.gz"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
RDEPEND="sys-apps/file"
IUSE=""
SLOT="0"
LICENSE="BSD-2 MIT"
KEYWORDS="*"
S="${WORKDIR}/python-magic-0.4.27"

src_prepare() {
	mv magic ${PN} || die "error on rename magic directory"
	sed -i -e "s|'magic'|'python-magic'|g" \
		setup.py || die "error on sed setup.py"
	sed -i -e 's|from magic import|from python-magic import|g' \
		python-magic/__init__.py || die "error on sed __init__.py"

	distutils-r1_src_prepare
}
