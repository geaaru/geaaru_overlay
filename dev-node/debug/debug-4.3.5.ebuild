# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Lightweight debugging utility for Node.js and the browser"
HOMEPAGE="https://github.com/debug-js/debug"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/ms-2.1.2
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1
NPM_PKG_DIRS="
	src
"

S="${WORKDIR}/package"

inherit npmv1

