# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Python bindings for libcups"
HOMEPAGE="https://github.com/OpenPrinting/pycups https://pypi.org/project/pycups/"
SRC_URI="https://files.pythonhosted.org/packages/96/c4/b077f0422cd031e4f3a47c75ce0bcf77f2f2e5bf3648f6945a4d09fd44a5/pycups-2.0.4.tar.gz -> pycups-2.0.4.tar.gz"

DEPEND="
	net-print/cups
	dev-python/setuptools[${PYTHON_USEDEP}]"
RDEPEND="net-print/cups"
IUSE="examples"
SLOT="0"
LICENSE="GPL-2"
KEYWORDS="*"
S="${WORKDIR}/pycups-2.0.4"

python_install_all() {
	if use examples; then
		dodoc -r examples
		docompress -x /usr/share/doc/${PF}/examples
	fi
	distutils-r1_python_install_all
}
