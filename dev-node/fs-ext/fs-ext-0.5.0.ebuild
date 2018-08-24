# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Extensions to core 'fs' module."
HOMEPAGE="https://github.com/baudehlo/node-fs-ext/"

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

