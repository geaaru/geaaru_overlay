# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Python interface to Oracle Database"
HOMEPAGE="https://oracle.github.io/python-oracledb"
SRC_URI="https://files.pythonhosted.org/packages/87/ae/4576e5df7b8eadec51bb7d981a2bcc0d8387d7d6998a51d146c0886a523e/oracledb-4.0.2.tar.gz -> oracledb-4.0.2.tar.gz
"
LICENSE="Apache-2.0 UPL-1.0"
SLOT="0"
KEYWORDS="*"
BDEPEND="
	dev-python/cython[${PYTHON_USEDEP}]
	dev-python/wheel[${PYTHON_USEDEP}]
"
RDEPEND="
	dev-db/oracle-instantclient-basic

	dev-python/typing-extensions[${PYTHON_USEDEP}]
	dev-python/cryptography[${PYTHON_USEDEP}]
"
DEPEND="

	${RDEPEND}
	dev-db/oracle-instantclient-sdk

"
IUSE="doc examples"
S="${WORKDIR}/oracledb-4.0.2"

python_install_all() {
	distutils-r1_python_install_all

	if use doc; then
		dohtml -r html/* || die
	fi

	if use examples; then
		docinto examples
		dodoc samples/* || die
	fi
}

