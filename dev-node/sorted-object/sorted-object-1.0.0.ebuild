# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

DESCRIPTION="Returns a copy of an object with its keys sorted"
HOMEPAGE="https://www.npmjs.com/package/sorted-object"

LICENSE="WTFPL"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
"
RDEPEND="${DEPEND}"

S="${WORKDIR}/package"

NPM_GITHUP_MOD="domenic/sorted-object"
SRC_URI="http://registry.npmjs.org/${PN}/-/${PF}.tgz"


inherit npmv1


