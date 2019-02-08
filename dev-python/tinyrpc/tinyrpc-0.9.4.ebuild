# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Heade$

EAPI=6
PYTHON_COMPAT=( python{2_7,3_6,3_7} )

inherit distutils-r1

DESCRIPTION="EAPOL/802.1x implementation"
HOMEPAGE="https://github.com/faucetsdn/chewie"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~arm"
IUSE="test"

DEPEND="dev-python/gevent[${PYTHON_USEDEP}]
	dev-python/werkzeug[${PYTHON_USEDEP}]
	dev-python/pyzmq[${PYTHON_USEDEP}]
	dev-python/jsonext[${PYTHON_USEDEP}]
	dev-python/geventhttpclient[${PYTHON_USEDEP}]
	dev-python/gevent-websocket[${PYTHON_USEDEP}]"
RDEPEND="${DEPEND}"
DEPEND="${DEPEND}
	dev-python/setuptools[${PYTHON_USEDEP}]"
