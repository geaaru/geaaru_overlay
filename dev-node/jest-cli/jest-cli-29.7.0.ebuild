# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Delightful JavaScript Testing."
HOMEPAGE="https://jestjs.io/"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""
RESTRICT="network-sandbox"

DEPEND="
	dev-node/chalk
	>=dev-node/create-jest-29.7.0
	>=dev-node/exit-0.1.2
	>=dev-node/import-local-3.1.0
	>=dev-node/jest-config-29.7.0
	>=dev-node/jest-util-29.7.0
	>=dev-node/jest-validate-29.7.0
	>=dev-node/yargs-17.7.2
"
RDEPEND="${DEPEND}"

NPM_LOCAL_MODULES="
@jest
"

NPM_PKG_DIRS="
build
"
NPM_BINS="
	jest.js => node-jestcli
"

S="${WORKDIR}/package"

inherit npmv1

