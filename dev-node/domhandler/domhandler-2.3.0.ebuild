# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="handler for htmlparser2 that turns pages into a dom"
HOMEPAGE="https://github.com/fb55/DomHandler#readme"

SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/domelementtype-1.3.1
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

