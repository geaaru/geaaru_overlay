# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Fast & simple storage - a Node.js-style LevelDB wrapper"
HOMEPAGE="https://github.com/level/levelup"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/deferred-leveldown-1.2.2
	>=dev-node/level-codec-7.0.1
	>=dev-node/level-errors-1.0.5
	>=dev-node/level-iterator-stream-1.3.1
	>=dev-node/prr-1.0.1
	>=dev-node/semver-5.4.1
	>=dev-node/xtend-4.0.1
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

