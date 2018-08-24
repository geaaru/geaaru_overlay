# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="MQTT broker as a module"
HOMEPAGE="http://www.npmjs.com/package/mosca"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/array-from-2.1.1
	>=dev-node/ascoltatori-3.2.0
	>=dev-node/brfs-1.4.4
	>=dev-node/clone-1.0.2
	>=dev-node/commander-2.9.0
	>=dev-node/deepcopy-0.6.3
	>=dev-node/escape-string-regexp-1.0.5
	>=dev-node/extend-3.0.1
	>=dev-node/json-buffer-2.0.11
	>=dev-node/jsonschema-1.2.4
	>=dev-node/level-sublevel-6.6.5
	>=dev-node/levelup-1.3.9
	>=dev-node/lru-cache-4.0.2
	>=dev-node/memdown-1.1.2
	>=dev-node/minimatch-3.0.4
	>=dev-node/moving-average-0.1.1
	>=dev-node/mqtt-1.14.1
	>=dev-node/mqtt-connection-2.1.1
	>=dev-node/msgpack5-3.6.0
	>=dev-node/nanoid-0.2.2
	>=dev-node/pbkdf2-password-1.2.1
	>=dev-node/pino-2.16.0
	>=dev-node/qlobber-0.7.0
	>=dev-node/retimer-1.1.0
	>=dev-node/st-1.2.2
	>=dev-node/steed-1.1.3
	>=dev-node/uuid-2.0.3
	>=dev-node/websocket-stream-3.1.0
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

