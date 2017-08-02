# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Use websockets with the node streams API. Works in browser and node"
HOMEPAGE="https://github.com/maxogden/websocket-stream#readme"

LICENSE="BSD-2-Clause"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/duplexify-3.5.1
	>=dev-node/inherits-2.0.3
	>=dev-node/through2-2.0.3
	>=dev-node/ws-1.1.4
	>=dev-node/xtend-4.0.1
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

