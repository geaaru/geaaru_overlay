# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="A library for the MQTT protocol"
HOMEPAGE="https://github.com/mqttjs/MQTT.js#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/commist-1.0.0
	>=dev-node/concat-stream-1.6.0
	>=dev-node/end-of-stream-1.4.0
	>=dev-node/help-me-1.1.0
	>=dev-node/inherits-2.0.3
	>=dev-node/minimist-1.2.0
	>=dev-node/mqtt-connection-2.1.1
	>=dev-node/mqtt-packet-3.4.8
	>=dev-node/pump-1.0.2
	>=dev-node/readable-stream-1.0.34
	>=dev-node/reinterval-1.1.0
	>=dev-node/split2-2.1.1
	>=dev-node/websocket-stream-3.3.3
	>=dev-node/xtend-4.0.1
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

