# Copyright 1999-2019 Gentoo Authors
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
	>=dev-node/bl-2.2.0
	>=dev-node/bson-1.1.4
	>=dev-node/denque-1.4.1
	>=dev-node/require_optional-1.0.1
	>=dev-node/safe-buffer-5.1.2
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

