# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="tar for node"
HOMEPAGE="https://github.com/isaacs/node-tar#readme"

LICENSE="BSD"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/block-stream-0.0.9
	>=dev-node/fstream-0.1.31
	>=dev-node/inherits-2.0.3
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

