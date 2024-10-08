# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="jest-snapshot nodejs module"
HOMEPAGE="https://github.com/jestjs/jest"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""
RESTRICT="network-sandbox"

DEPEND="
	>=dev-node/babel-preset-current-node-syntax-1.0.1
	dev-node/chalk
	>=dev-node/expect-29.7.0
	>=dev-node/graceful-fs-4.2.11
	>=dev-node/jest-diff-29.7.0
	>=dev-node/jest-get-type-29.6.3
	>=dev-node/jest-matcher-utils-29.7.0
	>=dev-node/jest-message-util-29.7.0
	>=dev-node/jest-util-29.7.0
	>=dev-node/natural-compare-1.4.0
	>=dev-node/pretty-format-29.7.0
	>=dev-node/semver-7.6.2
"
RDEPEND="${DEPEND}"

NPM_LOCAL_MODULES="
@babel
@jest
"

S="${WORKDIR}/package"

inherit npmv1

src_prepare() {
	# The @jest/test-utils@29.7.0 is not online
	sed -i '/test-utils/d' package.json
	npmv1_src_prepare
}
