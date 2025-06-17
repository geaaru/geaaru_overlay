# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=7

DESCRIPTION="ECMAScript (ESTree) AST walker"
HOMEPAGE="https://github.com/acornjs/acorn"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/acorn-8.15.0
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1
NPM_PKG_DIRS="
dist
"

S="${WORKDIR}/package"

inherit npmv1

