# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
# Ebuild automatically produced by node-ebuilder.

EAPI=5

DESCRIPTION="Socket.IO client for the browser and node.js"
HOMEPAGE="http://socket.io"

SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/active-x-obfuscator-0.0.1
	>=dev-node/uglify-js-1.2.5
	>=dev-node/ws-0.4.32
	>=dev-node/xmlhttprequest-1.4.2
"
RDEPEND="${DEPEND}"

NPM_PKG_NAME="socket.io-client"
NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

