# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

DESCRIPTION="Native Abstractions for Node.js: C++ header for Node 0.8 -> 4 compatibility"
HOMEPAGE="https://www.npmjs.com/package/nan"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
"
RDEPEND="${DEPEND}"

S="${WORKDIR}/package"

NPM_PKG_DIRS="
    *.h
"

inherit npmv1

