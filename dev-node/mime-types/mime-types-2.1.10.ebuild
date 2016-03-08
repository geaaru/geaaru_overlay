# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

DESCRIPTION="The ultimate javascript content-type utility."
HOMEPAGE="https://www.npmjs.com/package/mime-types"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
>=dev-node/mime-db-1.22.0
"
RDEPEND="${DEPEND}"

NPM_SYSTEM_MODULES="
mime-db
"

S="${WORKDIR}/package"

inherit npmv1

