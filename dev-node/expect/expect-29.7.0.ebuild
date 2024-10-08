# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="This package exports the expect function used in [Jest](https://jestjs.io/). You can find its documentation [on Jest's website](https://jestjs.io/docs/expect)."
HOMEPAGE="https://github.com/jestjs/jest#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""
RESTRICT="network-sandbox"

DEPEND="
	>=dev-node/jest-get-type-29.6.3
	>=dev-node/jest-matcher-utils-29.7.0
	>=dev-node/jest-message-util-29.7.0
	>=dev-node/jest-util-29.7.0
"
RDEPEND="${DEPEND}"

NPM_LOCAL_MODULES="
@jest
"

S="${WORKDIR}/package"

inherit npmv1

src_prepare() {
	# The @jest/test-utils@29.7.0 is not online
	sed -i '/test-utils/d' package.json
	npmv1_src_prepare
}

