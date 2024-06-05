# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="> Babel preset for all Jest plugins. This preset is automatically included when using [babel-jest](https://github.com/jestjs/jest/tree/main/packages/babel-jest)."
HOMEPAGE="https://github.com/jestjs/jest"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/babel-plugin-jest-hoist-29.6.3
	>=dev-node/babel-preset-current-node-syntax-1.0.1
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

