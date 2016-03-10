# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

DESCRIPTION="HTTP Hawk Authentication Scheme"
HOMEPAGE="https://www.npmjs.com/package/hawk"

LICENSE="BSD-3-Clause"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
>=dev-node/boom-2.0.0
>=dev-node/cryptiles-2.0.0
>=dev-node/hoek-2.0.0
>=dev-node/sntp-1.0.0
"
RDEPEND="${DEPEND}"

S="${WORKDIR}/package"

NPM_NO_DEPS=1

inherit npmv1

