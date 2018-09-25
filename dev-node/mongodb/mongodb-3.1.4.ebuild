# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="The official MongoDB driver for Node.js"
HOMEPAGE="https://github.com/mongodb/node-mongodb-native"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/mongodb-core-3.1.3
	>=dev-node/safe-buffer-5.1.2
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

