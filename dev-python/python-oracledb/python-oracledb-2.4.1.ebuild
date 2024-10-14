# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Python interface to Oracle Database"
HOMEPAGE="https://oracle.github.io/python-oracledb https://pypi.org/project/oracledb/"
SRC_URI="https://files.pythonhosted.org/packages/8e/0f/96ba2269f2365272972333177ca0c44a82037bc32c6ee9f6547ca595c478/oracledb-2.4.1.tar.gz -> oracledb-2.4.1.tar.gz"

DEPEND="
	dev-db/oracle-instantclient-basic
	$(python_gen_cond_dep 'dev-python/cython[${PYTHON_USEDEP}] dev-python/setuptools[${PYTHON_USEDEP}] dev-python/wheel[${PYTHON_USEDEP}]' -3)
	dev-python/setuptools[${PYTHON_USEDEP}]"
RDEPEND="dev-db/oracle-instantclient-basic"
IUSE="doc examples"
SLOT="0"
LICENSE="Apache-2.0 UPL-1.0"
KEYWORDS="*"
S="${WORKDIR}/oracledb-2.4.1"

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
