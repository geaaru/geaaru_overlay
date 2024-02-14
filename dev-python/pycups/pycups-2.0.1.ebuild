# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Python bindings for libcups"
HOMEPAGE="https://github.com/zdohnal/pycups https://pypi.org/project/pycups/"
SRC_URI="https://files.pythonhosted.org/packages/0c/bb/82546806a86dc16f5eeb76f62ffdc42cce3d43aacd4e25a8b5300eec0263/pycups-2.0.1.tar.gz -> pycups-2.0.1.tar.gz"

DEPEND="
	net-print/cups
	dev-python/setuptools[${PYTHON_USEDEP}]"
RDEPEND="net-print/cups"
IUSE="examples"
SLOT="0"
LICENSE="GPL-2"
KEYWORDS="*"
S="${WORKDIR}/pycups-2.0.1"

python_install_all() {
	if use examples; then
		dodoc -r examples
		docompress -x /usr/share/doc/${PF}/examples
	fi
	distutils-r1_python_install_all
}
