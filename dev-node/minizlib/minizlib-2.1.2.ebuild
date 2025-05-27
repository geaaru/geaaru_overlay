# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=7

DESCRIPTION="A small fast zlib stream built on [minipass](http://npm.im/minipass) and Node.js's zlib binding."
HOMEPAGE="http://www.npmjs.com/package/minizlib"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/minipass-3.3.6
	>=dev-node/yallist-4.0.0
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

