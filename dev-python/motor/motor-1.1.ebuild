# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Heade$

EAPI=5
PYTHON_COMPAT=( python2_7 python3_4 python3_5 )

inherit distutils-r1

DESCRIPTION="Non-blocking MongoDB driver for Tornado or asyncio"
HOMEPAGE="https://pypi.python.org/pypi/motor"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="Apache"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~arm"
IUSE="doc test"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]
	>=dev-python/pymongo-3.4.0[${PYTHON_USEDEP}]
"

RDEPEND="
"


