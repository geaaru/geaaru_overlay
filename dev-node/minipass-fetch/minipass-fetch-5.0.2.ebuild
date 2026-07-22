# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=7

DESCRIPTION="An implementation of window.fetch in Node.js using Minipass streams"
HOMEPAGE="http://www.npmjs.com/package/minipass-fetch"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/minipass-7.1.3
	>=dev-node/minipass-sized-2.0.0
	>=dev-node/minizlib-3.1.0
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

