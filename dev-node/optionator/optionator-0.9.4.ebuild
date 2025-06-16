# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=7

DESCRIPTION="option parsing and help generation"
HOMEPAGE="https://github.com/gkz/optionator"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/prelude-ls-1.2.1
	>=dev-node/deep-is-0.1.3
	>=dev-node/word-wrap-1.2.5
	>=dev-node/type-check-0.4.0
	>=dev-node/levn-0.4.1
	>=dev-node/fast-levenshtein-2.0.6
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

