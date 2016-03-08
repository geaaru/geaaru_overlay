# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

DESCRIPTION="Terminal string styling done right. Much color."
HOMEPAGE="https://www.npmjs.com/package/chalk"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
>=dev-node/ansi-styles-2.1.0
>=dev-node/escape-string-regexp-1.0.2
>=dev-node/has-ansi-2.0.0
>=dev-node/strip-ansi-3.0.0
>=dev-node/supports-color-2.0.0
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS="1"

S="${WORKDIR}/package"

inherit npmv1

