# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

MY_V=${PV}-0

DESCRIPTION="Extremely fast double-ended queue implementation"
HOMEPAGE="https://github.com/petkaantonov/deque"
SRC_URI="http://registry.npmjs.org/${PN}/-/${PN}-${MY_V}.tgz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

NPM_PKG_DIRS="
js
"

S="${WORKDIR}/package"

inherit npmv1

