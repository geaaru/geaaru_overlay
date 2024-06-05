# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="jest-runner nodejs module"
HOMEPAGE="https://github.com/jestjs/jest"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""
RESTRICT="network-sandbox"

DEPEND="
	>=dev-node/chalk-4.1.2
	>=dev-node/emittery-0.13.1
	>=dev-node/graceful-fs-4.2.11
	>=dev-node/jest-docblock-29.7.0
	>=dev-node/jest-environment-node-29.7.0
	>=dev-node/jest-haste-map-29.7.0
	>=dev-node/jest-leak-detector-29.7.0
	>=dev-node/jest-message-util-29.7.0
	>=dev-node/jest-resolve-29.7.0
	>=dev-node/jest-runtime-29.7.0
	>=dev-node/jest-util-29.7.0
	>=dev-node/jest-watcher-29.7.0
	>=dev-node/jest-worker-29.7.0
	>=dev-node/p-limit-3.1.0
	>=dev-node/source-map-support-0.5.13
"
RDEPEND="${DEPEND}"

NPM_LOCAL_MODULES="
@jest
@types
"

S="${WORKDIR}/package"

inherit npmv1

