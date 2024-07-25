# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6
PYTHON_COMPAT=( python2_7 python3_4 python3_5 )

inherit distutils-r1 autotools eutils

DESCRIPTION="OVS bindings for python."
HOMEPAGE="https://github.com/openvswitch/ovs/"
SRC_URI="https://github.com/openvswitch/ovs/archive/v2.7.1.tar.gz -> ${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 ~arm64 x86"

RDEPEND="!<net-misc/openvswitch-2.6.0-r2"
DEPEND="${RDEPEND}
	dev-python/setuptools[${PYTHON_USEDEP}]
	"

src_prepare () {
	eautoreconf || die
}
