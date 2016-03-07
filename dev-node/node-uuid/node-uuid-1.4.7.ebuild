# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

DESCRIPTION="Rigorous implementation of RFC4122 (v1 and v4) UUIDs."
HOMEPAGE="https://www.npmjs.com/package/node-uuid"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
"
RDEPEND="${DEPEND}"

S="${WORKDIR}/package"

NPM_BINS="
	uuid => node-uuid
"

inherit npmv1

