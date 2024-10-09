# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Jest plugin to use babel for transformation."
HOMEPAGE="https://github.com/jestjs/jest"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""
RESTRICT="network-sandbox"

DEPEND="
	>=dev-node/babel-plugin-istanbul-6.1.1
	>=dev-node/babel-preset-jest-29.6.3
	dev-node/chalk
	>=dev-node/graceful-fs-4.2.11
	>=dev-node/slash-3.0.0
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

