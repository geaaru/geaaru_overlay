# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="A virtual file format"
HOMEPAGE="http://github.com/wearefractal/vinyl"

SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/clone-0.2.0
	>=dev-node/clone-stats-0.0.1
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

