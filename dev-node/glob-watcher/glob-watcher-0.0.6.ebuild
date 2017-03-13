# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Watch globs"
HOMEPAGE="http://github.com/wearefractal/glob-watcher"

SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="
	>=dev-node/gaze-0.5.2
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

