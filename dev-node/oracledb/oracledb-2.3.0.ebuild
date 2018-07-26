# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="A Node.js module for Oracle Database access"
HOMEPAGE="http://oracle.github.io/node-oracledb/"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/nan-2.10.0
"
RDEPEND="${DEPEND}"

NPM_PKG_DIRS="
build/Release
"
NPM_GYP_PKG=1

S="${WORKDIR}/package"

inherit npmv1

