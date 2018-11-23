# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI="6"
PYTHON_COMPAT=( python{3_5,3_6} )
inherit distutils-r1

MY_PN=cx_Oracle
MY_P=${MY_PN}-${PV}
DESCRIPTION="Python interface to Oracle"
HOMEPAGE="https://pypi.python.org/pypi/cx_Oracle"
SRC_URI="mirror://pypi/${MY_PN:0:1}/${MY_PN}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="doc examples"

DEPEND=">=dev-db/oracle-instantclient-basic-12.1.0.2"
RDEPEND="${DEPEND}"

S=${WORKDIR}/${MY_P}

DOCS="README.txt"

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
