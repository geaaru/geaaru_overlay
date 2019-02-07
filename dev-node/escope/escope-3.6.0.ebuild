# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="ECMAScript scope analyzer"
HOMEPAGE="http://github.com/estools/escope"

LICENSE="BSD-2-Clause"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/es6-map-0.1.5
	>=dev-node/es6-weak-map-2.0.2
	>=dev-node/esrecurse-4.2.1
	>=dev-node/estraverse-4.2.0
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

