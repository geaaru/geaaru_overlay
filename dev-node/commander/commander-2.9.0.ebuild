# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="the complete solution for node.js command-line programs"
HOMEPAGE="https://github.com/tj/commander.js#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/graceful-readlink-1.0.1
"
RDEPEND="${DEPEND}"

NPM_BINS="
"

S="${WORKDIR}/package"

inherit npmv1

