# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

DESCRIPTION="A light, featureful and explicit option parsing library."
HOMEPAGE="https://www.npmjs.com/package/dashdash"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
>=dev-node/assert-plus-1.0.0
"
RDEPEND="${DEPEND}"

NPM_SYSTEM_MODULES="
assert-plus
"

S="${WORKDIR}/package"

inherit npmv1

