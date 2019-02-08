# Copyright 2019-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6
PYTHON_COMPAT=( python{2_7,3_6,3_7} )

inherit distutils-r1

DESCRIPTION="A small, modular, transport and protocol neutral RPC library"
HOMEPAGE="https://github.com/mbr/tinyrpc"
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
