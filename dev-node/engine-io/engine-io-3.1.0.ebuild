# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="The realtime engine behind Socket.IO. Provides the foundation of a bidirectional connection between client and server"
HOMEPAGE="https://github.com/socketio/engine.io"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/accepts-1.3.3
	>=dev-node/base64id-1.0.0
	>=dev-node/cookie-0.3.1
	>=dev-node/debug-2.6.8
	>=dev-node/engine-io-parser-2.1.1
	>=dev-node/uws-0.14.5
	>=dev-node/ws-2.3.1
"
RDEPEND="${DEPEND}"

NPM_PKG_NAME="engine.io"

S="${WORKDIR}/package"

inherit npmv1

