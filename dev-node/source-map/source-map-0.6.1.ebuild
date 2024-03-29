# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Generates and consumes source maps"
HOMEPAGE="https://github.com/mozilla/source-map"

LICENSE="BSD-3-Clause"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
"
RDEPEND="${DEPEND}"

NPM_PKG_DIRS="
	dist
"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

