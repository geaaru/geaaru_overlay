# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=7

DESCRIPTION="Light ECMAScript (JavaScript) Value Notation - human written, concise, typed, flexible"
HOMEPAGE="https://github.com/gkz/levn"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/prelude-ls-1.2.1
	>=dev-node/type-check-0.4.0
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

