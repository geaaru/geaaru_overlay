# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
# Ebuild automatically produced by node-ebuilder.

EAPI=5

DESCRIPTION="JavaScript parser, mangler/compressor and beautifier toolkit"
HOMEPAGE="http://lisperator.net/uglifyjs"

LICENSE="BSD-2-Clause"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/async-0.2.10
	>=dev-node/source-map-0.5.6
	>=dev-node/uglify-to-browserify-1.0.2
	>=dev-node/yargs-3.10.0
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

