# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
# Ebuild automatically produced by node-ebuilder.

EAPI=5

DESCRIPTION="JavaScript parser and compressor/beautifier toolkit"
HOMEPAGE="https://github.com/mishoo/UglifyJS#readme"

SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
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

