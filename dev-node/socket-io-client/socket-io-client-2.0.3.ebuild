# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="socket.io-client nodejs module"
HOMEPAGE="https://github.com/Automattic/socket.io-client#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/backo2-1.0.2
	>=dev-node/base64-arraybuffer-0.1.5
	>=dev-node/component-bind-1.0.0
	>=dev-node/component-emitter-1.2.1
	>=dev-node/debug-2.6.8
	>=dev-node/engine-io-client-3.1.1
	>=dev-node/has-cors-1.1.0
	>=dev-node/indexof-0.0.1
	>=dev-node/object-component-0.0.3
	>=dev-node/parseqs-0.0.5
	>=dev-node/parseuri-0.0.5
	>=dev-node/socket-io-parser-3.1.2
	>=dev-node/to-array-0.1.4
"
RDEPEND="${DEPEND}"

NPM_PKG_NAME="socket.io-client"
NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

