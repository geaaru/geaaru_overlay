# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
# Ebuild automatically produced by node-ebuilder.

EAPI=5

DESCRIPTION="A Node.js module for implementing BLE (Bluetooth Low Energy) peripherals"
HOMEPAGE="http://www.npmjs.com/package/bleno"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/debug-2.2.0
	>=dev-node/bluetooth-hci-socket-0.4.4
	>=dev-node/bplist-parser-0.0.6
"
RDEPEND="${DEPEND}"


S="${WORKDIR}/package"

inherit npmv1

