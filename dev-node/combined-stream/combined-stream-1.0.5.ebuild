# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

DESCRIPTION="A stream that emits multiple other streams one after another."
HOMEPAGE="https://www.npmjs.com/package/combined-stream"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
>=dev-node/delayed-stream-1.0.0
"
RDEPEND="${DEPEND}"

NPM_SYSTEM_MODULES="
delayed-stream
"

S="${WORKDIR}/package"

inherit npmv1

