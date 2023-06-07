# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Extracts a base path from a node-glob instance"
HOMEPAGE="http://github.com/wearefractal/glob2base"

SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/find-index-0.1.1
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

