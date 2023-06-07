# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="pull-stream interface to levelup"
HOMEPAGE="https://github.com/dominictarr/pull-level"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/level-post-1.0.7
	>=dev-node/pull-cat-1.1.11
	>=dev-node/pull-live-1.0.1
	>=dev-node/pull-pushable-2.2.0
	>=dev-node/pull-stream-3.6.9
	>=dev-node/pull-window-2.1.4
	>=dev-node/stream-to-pull-stream-1.7.2
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

