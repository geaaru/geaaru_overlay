# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="ECMAScript code generator"
HOMEPAGE="http://github.com/estools/escodegen"

LICENSE="BSD-2-Clause"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/esprima-3.1.3
	>=dev-node/estraverse-4.2.0
	>=dev-node/esutils-2.0.2
	>=dev-node/optionator-0.8.2
	>=dev-node/source-map-0.6.1
"
RDEPEND="${DEPEND}"


S="${WORKDIR}/package"

inherit npmv1

