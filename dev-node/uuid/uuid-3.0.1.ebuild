# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="RFC4122 (v1 and v4) generator"
HOMEPAGE="https://github.com/kelektiv/node-uuid#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1
# To many node-uuid implementations!!
NPM_BINS="
uuid => node-uuid-kelektiv
"
S="${WORKDIR}/package"

inherit npmv1

