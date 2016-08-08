# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Heade$

EAPI=5
PYTHON_COMPAT=( python3_4 python3_5)

inherit distutils-r1

DESCRIPTION="Python CoAP library"
HOMEPAGE="https://pypi.python.org/pypi/aiocoap"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="doc "

DEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
"

RDEPEND="
"

src_prepare() {
	# remove tests directory
	rm -rf ${S}/tests || die

	distutils-r1_src_prepare
}


