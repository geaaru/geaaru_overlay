# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=7

DESCRIPTION="walk paths fast and efficiently"
HOMEPAGE="http://www.npmjs.com/package/path-scurry"

LICENSE="BlueOak-1.0.0"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/lru-cache-10.4.3
	>=dev-node/minipass-7.1.3
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

