# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="jest-resolve nodejs module"
HOMEPAGE="https://github.com/jestjs/jest"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	dev-node/chalk
	>=dev-node/graceful-fs-4.2.11
	>=dev-node/jest-haste-map-29.7.0
	>=dev-node/jest-pnp-resolver-1.2.3
	>=dev-node/jest-util-29.7.0
	>=dev-node/jest-validate-29.7.0
	>=dev-node/resolve-1.22.8
	>=dev-node/resolve-exports-2.0.2
	>=dev-node/slash-3.0.0
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

