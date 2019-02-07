# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6
PYTHON_COMPAT=( python2_7 python3_{5,6} )

inherit distutils-r1

DESCRIPTION="OpenFlow controller for multi table OpenFlow 1.3 switches"
HOMEPAGE="https://github.com/faucetsdn/faucet"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 ~arm64 x86 ~arm"
IUSE=""

DEPEND="dev-python/chewie[${PYTHON_USEDEP}]
	dev-python/datadiff[${PYTHON_USEDEP}]
	dev-python/eventlet[${PYTHON_USEDEP}]
	dev-python/influxdb[${PYTHON_USEDEP}]
	dev-python/msgpack[${PYTHON_USEDEP}]
	dev-python/networkx[${PYTHON_USEDEP}]
	dev-python/prometheus_client[${PYTHON_USEDEP}]
	dev-python/pyyaml[${PYTHON_USEDEP}]
	>=dev-python/ryu-4.30[${PYTHON_USEDEP}]
	>=dev-python/beka-0.3.3[${PYTHON_USEDEP}]
	dev-python/pytricia[${PYTHON_USEDEP}]
"
RDEPEND="$DEPEND"
DEPEND="$DEPEND
	dev-python/setuptools[${PYTHON_USEDEP}]
	dev-python/pbr[${PYTHON_USEDEP}]"
