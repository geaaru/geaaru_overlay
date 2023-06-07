# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="JSON Schema validation and specifications"
HOMEPAGE="https://github.com/kriszyp/json-schema#readme"

SLOT="0"
KEYWORDS="*"
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
NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

