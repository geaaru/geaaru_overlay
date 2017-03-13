# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Require any supported file as a node module."
HOMEPAGE="https://github.com/tkellen/node-rechoir"

SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="
	>=dev-node/resolve-1.3.2
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

