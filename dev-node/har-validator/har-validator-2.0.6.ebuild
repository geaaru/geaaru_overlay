# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

DESCRIPTION="Extremely fast HTTP Archive (HAR) validator using JSON Schema"
HOMEPAGE="https://www.npmjs.com/package/har-validator"

LICENSE="ISC"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
>=dev-node/chalk-1.1.1
>=dev-node/commander-2.9.0
>=dev-node/is-my-json-valid-2.12.4
>=dev-node/pinkie-promise-2.0.0
"
RDEPEND="${DEPEND}"

S="${WORKDIR}/package"

NPM_NO_DEPS=1

inherit npmv1

