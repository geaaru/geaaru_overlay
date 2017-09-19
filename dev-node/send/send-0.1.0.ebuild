# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Better streaming static file server with Range and conditional-GET support"
HOMEPAGE="http://www.npmjs.com/package/send"

SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/debug-2.2.0
	>=dev-node/fresh-0.1.0
	>=dev-node/mime-1.2.6
	>=dev-node/range-parser-0.0.4
"
RDEPEND="${DEPEND}"


S="${WORKDIR}/package"

inherit npmv1

