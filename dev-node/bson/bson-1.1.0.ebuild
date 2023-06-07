# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="A bson parser for node.js and the browser"
HOMEPAGE="https://github.com/mongodb/js-bson#readme"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
"
RDEPEND="${DEPEND}"

NPM_PKG_DIRS="
browser_build
"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

