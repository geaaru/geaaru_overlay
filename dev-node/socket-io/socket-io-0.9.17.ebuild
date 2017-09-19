# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Real-time apps made cross-browser & easy with a WebSocket-like API"
HOMEPAGE="http://socket.io"

SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/base64id-0.1.0
	>=dev-node/policyfile-0.0.4
	>=dev-node/redis-0.7.3
	>=dev-node/socket-io-client-0.9.16
"
RDEPEND="${DEPEND}"

NPM_PKG_NAME="socket.io"

S="${WORKDIR}/package"

inherit npmv1

