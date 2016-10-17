# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
# Ebuild automatically produced by node-ebuilder.

EAPI=5

DESCRIPTION="ECMAScript parser"
HOMEPAGE="https://github.com/ternjs/acorn"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1
NPM_PKG_DIRS="
dist
src
"
S="${WORKDIR}/package"

inherit npmv1

