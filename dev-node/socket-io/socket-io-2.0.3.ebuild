# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="socket.io nodejs module"
HOMEPAGE="https://github.com/socketio/socket.io#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/debug-2.6.8
	>=dev-node/engine-io-3.1.0
	>=dev-node/object-assign-4.1.1
	>=dev-node/socket-io-adapter-1.1.0
	>=dev-node/socket-io-client-2.0.3
	>=dev-node/socket-io-parser-3.1.2
"
RDEPEND="${DEPEND}"

NPM_PKG_NAME="socket.io"
NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

