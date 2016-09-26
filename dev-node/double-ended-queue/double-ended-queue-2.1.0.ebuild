# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
# Ebuild automatically produced by node-ebuilder.

EAPI=5

DESCRIPTION="Extremely fast double-ended queue implementation"
HOMEPAGE="https://github.com/petkaantonov/deque"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

MY_PV="${PV}-0"
SRC_URI="http://registry.npmjs.org/${PN}/-/${PN}-${MY_PV}.tgz"
DEPEND="
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

