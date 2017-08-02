# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Stream-based Connection object for MQTT, extracted from MQTT.js"
HOMEPAGE="https://github.com/mqttjs/mqtt-connection"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/inherits-2.0.3
	>=dev-node/mqtt-packet-3.4.8
	>=dev-node/reduplexer-1.1.0
	>=dev-node/through2-0.6.5
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

