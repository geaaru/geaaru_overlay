# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=7

DESCRIPTION="Lightweight debugging utility for Node.js and the browser"
HOMEPAGE="http://www.npmjs.com/package/debug"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/ms-2.1.3
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1
NPM_PKG_DIRS="
	src
"

S="${WORKDIR}/package"

inherit npmv1

