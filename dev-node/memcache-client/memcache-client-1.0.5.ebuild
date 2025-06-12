# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=7

DESCRIPTION="NodeJS memcached client"
HOMEPAGE="http://www.npmjs.com/package/memcache-client"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/lodash-defaults-4.2.0
	>=dev-node/memcache-parser-1.0.1
	>=dev-node/optional-require-1.1.8
	>=dev-node/tslib-2.1.0
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

NPM_PKG_DIRS="
	dist
"

inherit npmv1

