# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-python/pycadf/pycadf-0.5-r1.ebuild,v 1.2 2014/07/06 12:45:32 mgorny Exp $

EAPI=5
PYTHON_COMPAT=( python2_7 )

inherit distutils-r1



DESCRIPTION="A Scss compiler for Python"
HOMEPAGE="https://pypi.python.org/pypi/pysCSS"
SRC_URI="mirror://pypi/${PN:0:1}/pyScss/pyScss-${PV}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="doc test"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]
		>=dev-python/pbr-0.6[${PYTHON_USEDEP}]
"

S="${WORKDIR}/pyScss-${PV}"

RDEPEND=""

