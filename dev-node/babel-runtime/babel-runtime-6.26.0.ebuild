# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="babel selfContained runtime"
HOMEPAGE="http://www.npmjs.com/package/babel-runtime"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/core-js-2.5.7
	>=dev-node/regenerator-runtime-0.11.1
"
RDEPEND="${DEPEND}"

NPM_PKG_DIRS="
core-js
helpers
regenerator
"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

