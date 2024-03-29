# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Redis search for node.js"
HOMEPAGE="https://github.com/visionmedia/reds"

SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/natural-0.2.1
	>=dev-node/redis-0.12.1
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

