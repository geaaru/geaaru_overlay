# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
# Ebuild automatically produced by node-ebuilder.

EAPI=5

DESCRIPTION="simple to use, blazing fast and thoroughly tested websocket client, server and console for node.js, up-to-date against RFC-6455"
HOMEPAGE="http://www.npmjs.com/package/ws"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="
	>=dev-node/options-0.0.6
	>=dev-node/ultron-1.0.2
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

