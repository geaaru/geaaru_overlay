# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Parser for the client for the realtime Engine"
HOMEPAGE="https://github.com/socketio/engine.io-parser"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/after-0.8.2
	>=dev-node/arraybuffer-slice-0.0.6
	>=dev-node/base64-arraybuffer-0.1.5
	>=dev-node/blob-0.0.4
	>=dev-node/has-binary2-1.0.2
"
RDEPEND="${DEPEND}"

NPM_PKG_NAME="engine.io-parser"
NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

