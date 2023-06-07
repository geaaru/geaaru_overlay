# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Client for the realtime Engine"
HOMEPAGE="https://github.com/socketio/engine.io-client"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/component-emitter-1.2.1
	>=dev-node/component-inherit-0.0.3
	>=dev-node/debug-2.6.8
	>=dev-node/engine-io-parser-2.1.1
	>=dev-node/has-cors-1.1.0
	>=dev-node/indexof-0.0.1
	>=dev-node/parsejson-0.0.3
	>=dev-node/parseqs-0.0.5
	>=dev-node/parseuri-0.0.5
	>=dev-node/ws-2.3.1
	>=dev-node/xmlhttprequest-ssl-1.5.3
	>=dev-node/yeast-0.1.2
"
RDEPEND="${DEPEND}"

NPM_PKG_NAME="engine.io-client"
NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

