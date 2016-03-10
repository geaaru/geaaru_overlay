# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

DESCRIPTION="utilities for primitive JavaScript types"
HOMEPAGE="https://www.npmjs.com/package/jsprim"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
>=dev-node/extprintf-1.0.2
>=dev-node/json-schema-0.2.2
>=dev-node/verror-1.3.6
"
RDEPEND="${DEPEND}"

S="${WORKDIR}/package"

NPM_NO_DEPS=1

inherit npmv1

