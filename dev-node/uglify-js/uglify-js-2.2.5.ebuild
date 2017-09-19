# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="JavaScript parser, mangler/compressor and beautifier toolkit"
HOMEPAGE="http://lisperator.net/uglifyjs"

SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/optimist-0.3.7
	>=dev-node/source-map-0.1.43
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

NPM_BINS="
uglifyjs
"

NPM_PKG_DIRS="
tools
"

S="${WORKDIR}/package"

inherit npmv1

