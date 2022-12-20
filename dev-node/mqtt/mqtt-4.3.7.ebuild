# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="A library for the MQTT protocol"
HOMEPAGE="https://github.com/mqttjs/MQTT.js#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="
	>=dev-node/commist-1.0.0
	>=dev-node/concat-stream-2.0.0
	>=dev-node/debug-4.3.1
	>=dev-node/duplexify-4.1.2
	>=dev-node/help-me-3.0.0
	>=dev-node/inherits-2.0.4
	>=dev-node/lru-cache-6.0.0
	>=dev-node/minimist-1.2.5
	>=dev-node/mqtt-packet-6.10.0
	>=dev-node/number-allocator-1.0.10
	>=dev-node/pump-3.0.0
	>=dev-node/readable-stream-3.6.0
	>=dev-node/reinterval-1.1.0
	>=dev-node/rfdc-1.3.0
	>=dev-node/split2-3.2.2
	>=dev-node/ws-7.5.7
	>=dev-node/xtend-4.0.2
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

