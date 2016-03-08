# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

DESCRIPTION="Check if a string has ANSI escape codes"
HOMEPAGE="https://www.npmjs.com/package/has-ansi"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
>=dev-node/ansi-regex-2.0.0
"
RDEPEND="${DEPEND}"

NPM_SYSTEM_MODULES="
ansi-regex
"

S="${WORKDIR}/package"

inherit npmv1

