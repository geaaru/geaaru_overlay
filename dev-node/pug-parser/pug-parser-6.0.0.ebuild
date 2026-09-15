# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=7

DESCRIPTION="The pug parser (takes an array of tokens and converts it to an abstract syntax tree)"
HOMEPAGE="http://www.npmjs.com/package/pug-parser"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/pug-error-2.1.0
	>=dev-node/token-stream-1.0.0
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

