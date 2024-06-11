# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="[type-definitions]: https://github.com/jestjs/jest/blob/main/packages/jest-types/src/Circus.ts"
HOMEPAGE="https://github.com/jestjs/jest#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""
RESTRICT="network-sandbox"

DEPEND="
	dev-node/chalk
	>=dev-node/co-4.6.0
	>=dev-node/dedent-1.5.3
	>=dev-node/is-generator-fn-2.1.0
	>=dev-node/jest-each-29.7.0
	>=dev-node/jest-matcher-utils-29.7.0
	>=dev-node/jest-message-util-29.7.0
	>=dev-node/jest-runtime-29.7.0
	>=dev-node/jest-snapshot-29.7.0
	>=dev-node/jest-util-29.7.0
	>=dev-node/p-limit-3.1.0
	>=dev-node/pretty-format-29.7.0
	>=dev-node/pure-rand-6.1.0
	>=dev-node/slash-3.0.0
	>=dev-node/stack-utils-2.0.6
"
RDEPEND="${DEPEND}"

NPM_LOCAL_MODULES="
@jest
@types
"

S="${WORKDIR}/package"

inherit npmv1

