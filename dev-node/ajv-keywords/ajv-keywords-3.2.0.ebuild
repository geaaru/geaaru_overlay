# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Custom JSON-Schema keywords for Ajv validator"
HOMEPAGE="https://github.com/epoberezkin/ajv-keywords#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
"
RDEPEND="${DEPEND}"

NPM_PKG_DIRS="
keywords
"


NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

