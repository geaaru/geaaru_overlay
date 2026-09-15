# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=7

DESCRIPTION="A clean, whitespace-sensitive template language for writing HTML"
HOMEPAGE="https://pugjs.org"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/pug-code-gen-3.0.3
	>=dev-node/pug-filters-4.0.0
	>=dev-node/pug-lexer-5.0.1
	>=dev-node/pug-linker-4.0.0
	>=dev-node/pug-load-3.0.0
	>=dev-node/pug-parser-6.0.0
	>=dev-node/pug-runtime-3.0.1
	>=dev-node/pug-strip-comments-2.0.0
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

