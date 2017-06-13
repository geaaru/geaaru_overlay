# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Rigorous implementation of RFC4122 (v1 and v4) UUIDs."
HOMEPAGE="https://github.com/broofa/node-uuid"

SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
"
RDEPEND="${DEPEND}"

NPM_BINS="
uuid => node-uuid
"
NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

