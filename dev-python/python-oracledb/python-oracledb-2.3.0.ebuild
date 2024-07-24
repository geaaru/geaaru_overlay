# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Python interface to Oracle Database"
HOMEPAGE="https://oracle.github.io/python-oracledb https://pypi.org/project/oracledb/"
SRC_URI="https://files.pythonhosted.org/packages/f4/8c/01e960b15fc6ab882633c83e974493e81ec1905e612e38a7a997f957ce3e/oracledb-2.3.0.tar.gz -> oracledb-2.3.0.tar.gz"

DEPEND="
	dev-db/oracle-instantclient-basic
	$(python_gen_cond_dep 'dev-python/cython[${PYTHON_USEDEP}] dev-python/setuptools[${PYTHON_USEDEP}] dev-python/wheel[${PYTHON_USEDEP}]' -3)"
RDEPEND="dev-db/oracle-instantclient-basic"
IUSE="doc examples"
SLOT="0"
LICENSE="Apache-2.0 UPL-1.0"
KEYWORDS="*"
S="${WORKDIR}/oracledb-2.3.0"

python_install_all() {
	distutils-r1_python_install_all

	if use doc; then
		dohtml -r html/* || die
	fi

	if use examples; then
		docinto examples
		dodoc samples/* || die
	fi

	# Drop wrong paths
	#rm -rf ${D}/usr/cx_Oracle-doc/
}
