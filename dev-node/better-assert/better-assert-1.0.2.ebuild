# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Better assertions for node, reporting the expr, filename, lineno etc"
HOMEPAGE="https://github.com/visionmedia/better-assert#readme"

SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/callsite-1.0.0
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

