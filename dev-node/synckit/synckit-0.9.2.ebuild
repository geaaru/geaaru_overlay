# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Perform async work synchronously in Node.js using worker_threads with first-class TypeScript support."
HOMEPAGE="http://www.npmjs.com/package/synckit"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""
RESTRICT="network-sandbox"

DEPEND="
	>=dev-node/tslib-2.8.0
"
RDEPEND="${DEPEND}"

NPM_LOCAL_MODULES="
@pkgr
"

S="${WORKDIR}/package"

inherit npmv1

