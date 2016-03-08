# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

DESCRIPTION="JSON Schema validation and specifications"
HOMEPAGE="https://www.npmjs.com/package/json-schema"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
"
RDEPEND="${DEPEND}"

NPM_PKG_DIRS="
draft-00
draft-01
draft-02
draft-03
draft-04
draft-zyp-json-schema-03.xml
draft-zyp-json-schema-04.xml
"

S="${WORKDIR}/package"

inherit npmv1

