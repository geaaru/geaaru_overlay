# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Python interface to Oracle Database"
HOMEPAGE="https://oracle.github.io/python-oracledb"
SRC_URI="https://files.pythonhosted.org/packages/f7/02/70a872d1a4a739b4f7371ab8d3d5ed8c6e57e142e2503531aafcb220893c/oracledb-3.4.2.tar.gz -> oracledb-3.4.2.tar.gz
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

"
S="${WORKDIR}/oracledb-3.4.2"

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

