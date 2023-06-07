# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Exposes node v8 garbage collection stats"
HOMEPAGE="https://github.com/dainis/node-gcstats#readme"

LICENSE="Unlicense"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/nan-2.12.1
	>=dev-node/node-pre-gyp-0.11.0
"
RDEPEND="${DEPEND}"

NPM_PKG_DIRS="
build
src
"
NPM_GYP_PKG=1

S="${WORKDIR}/package"

inherit npmv1

