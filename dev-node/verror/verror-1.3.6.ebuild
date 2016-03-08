# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

DESCRIPTION="richer JavaScript errors"
HOMEPAGE="https://www.npmjs.com/package/verror"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
>=dev-node/extsprintf-1.0.2
"
RDEPEND="${DEPEND}"

NPM_SYSTEM_MODULES="
extsprintf
"

S="${WORKDIR}/package"

inherit npmv1

