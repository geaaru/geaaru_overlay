# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="A msgpack v5 implementation for node.js and the browser, with extension points"
HOMEPAGE="https://github.com/mcollina/msgpack5"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/bl-1.2.1
	>=dev-node/inherits-2.0.3
	>=dev-node/readable-stream-2.3.6
	>=dev-node/safe-buffer-5.1.2
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

