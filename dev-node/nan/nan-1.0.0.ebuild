# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Native Abstractions for Node.js: C++ header for Node 0.8->0.12 compatibility"
HOMEPAGE="https://github.com/rvagg/nan"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
"
RDEPEND="${DEPEND}"

NPM_PKG_DIRS="
*.h
"
NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

