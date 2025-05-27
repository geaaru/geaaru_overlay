# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=7

DESCRIPTION="The official MongoDB driver for Node.js"
HOMEPAGE="https://github.com/mongodb/node-mongodb-native"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="*"
IUSE=""
RESTRICT="network-sandbox"

DEPEND="
	>=dev-node/bson-6.10.3
	>=dev-node/mongodb-connection-string-url-3.0.2
"
RDEPEND="${DEPEND}"

NPM_LOCAL_MODULES="
@mongodb-js
"

S="${WORKDIR}/package"

inherit npmv1

