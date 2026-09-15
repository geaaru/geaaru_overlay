# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=7

DESCRIPTION="The pug lexer (takes a string and converts it to an array of tokens)"
HOMEPAGE="http://www.npmjs.com/package/pug-lexer"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/character-parser-2.2.0
	>=dev-node/is-expression-4.0.0
	>=dev-node/pug-error-2.1.0
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

