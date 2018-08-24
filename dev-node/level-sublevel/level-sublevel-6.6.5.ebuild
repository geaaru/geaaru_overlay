# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="partition levelup databases"
HOMEPAGE="https://github.com/dominictarr/level-sublevel"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/bytewise-1.1.0
	>=dev-node/levelup-0.19.1
	>=dev-node/ltgt-2.1.3
	>=dev-node/pull-defer-0.2.3
	>=dev-node/pull-level-2.0.4
	>=dev-node/pull-stream-3.6.9
	>=dev-node/typewiselite-1.0.0
	>=dev-node/xtend-4.0.1
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

