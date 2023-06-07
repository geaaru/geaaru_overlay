# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="An drop-in replacement for LevelDOWN that works in memory only"
HOMEPAGE="https://github.com/rvagg/node-memdown"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/abstract-leveldown-2.7.2
	>=dev-node/functional-red-black-tree-1.0.1
	>=dev-node/inherits-2.0.3
	>=dev-node/ltgt-1.0.2
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

