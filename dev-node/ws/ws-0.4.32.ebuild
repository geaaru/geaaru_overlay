# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
# Ebuild automatically produced by node-ebuilder.

EAPI=5

DESCRIPTION="simple to use, blazing fast and thoroughly tested websocket client, server and console for node.js, up-to-date against RFC-6455"
HOMEPAGE="https://github.com/einaros/ws"

SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/commander-2.1.0
	>=dev-node/nan-1.0.0
	>=dev-node/options-0.0.6
	>=dev-node/tinycolor-0.0.1
"
RDEPEND="${DEPEND}"

NPM_PKG_DIRS="
build/Release
"
NPM_GYP_PKG=1

S="${WORKDIR}/package"

inherit npmv1

