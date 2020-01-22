# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-python/pycadf/pycadf-0.5-r1.ebuild,v 1.2 2014/07/06 12:45:32 mgorny Exp $

EAPI=7
PYTHON_COMPAT=( python{2_7,3_6,3_7} )

inherit distutils-r1

DESCRIPTION="Automatic model code generator for SQLAlchemy"
HOMEPAGE="https://pypi.python.org/pypi/sqlacodegen"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]
	dev-python/setuptools_scm[${PYTHON_USEDEP}]
	dev-python/sqlalchemy[${PYTHON_USEDEP}]"

RDEPEND="dev-python/sqlalchemy[${PYTHON_USEDEP}]"
