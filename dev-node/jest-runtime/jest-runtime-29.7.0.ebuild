# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="jest-runtime nodejs module"
HOMEPAGE="https://github.com/jestjs/jest"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""
RESTRICT="network-sandbox"

DEPEND="
	dev-node/chalk
	>=dev-node/cjs-module-lexer-1.3.1
	>=dev-node/collect-v8-coverage-1.0.2
	>=dev-node/glob-7.1.3
	>=dev-node/graceful-fs-4.2.11
	>=dev-node/jest-haste-map-29.7.0
	>=dev-node/jest-message-util-29.7.0
	>=dev-node/jest-mock-29.7.0
	>=dev-node/jest-regex-util-29.6.3
	>=dev-node/jest-resolve-29.7.0
	>=dev-node/jest-snapshot-29.7.0
	>=dev-node/jest-util-29.7.0
	>=dev-node/slash-3.0.0
	>=dev-node/strip-bom-4.0.0
"
RDEPEND="${DEPEND}"

NPM_LOCAL_MODULES="
@jest
@types
"

S="${WORKDIR}/package"

inherit npmv1

src_prepare() {
	# The @jest/test-utils@29.7.0 is not online
	sed -i '/test-utils/d' package.json
	npmv1_src_prepare
}
