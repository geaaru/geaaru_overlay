# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=7

DESCRIPTION="HTTP server mocking and expectations library for Node.js"
HOMEPAGE="http://www.npmjs.com/package/nock"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/debug-4.4.3
	>=dev-node/json-stringify-safe-5.0.1
	>=dev-node/propagate-2.0.1
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

