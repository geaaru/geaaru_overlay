# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="the Istanbul command line interface"
HOMEPAGE="https://istanbul.js.org/"

LICENSE="ISC"
SLOT="0"
KEYWORDS="*"
IUSE=""
RESTRICT="network-sandbox"

DEPEND="
	>=dev-node/caching-transform-4.0.0
	>=dev-node/convert-source-map-1.9.0
	>=dev-node/decamelize-1.2.0
	>=dev-node/find-cache-dir-3.3.2
	>=dev-node/find-up-4.1.0
	>=dev-node/foreground-child-2.0.0
	>=dev-node/get-package-type-0.1.0
	>=dev-node/glob-7.1.6
	>=dev-node/istanbul-lib-coverage-3.2.2
	>=dev-node/istanbul-lib-hook-3.0.0
	>=dev-node/istanbul-lib-instrument-4.0.3
	>=dev-node/istanbul-lib-processinfo-2.0.3
	>=dev-node/istanbul-lib-report-3.0.1
	>=dev-node/istanbul-lib-source-maps-4.0.1
	>=dev-node/istanbul-reports-3.1.7
	>=dev-node/make-dir-3.1.0
	>=dev-node/node-preload-0.2.1
	>=dev-node/p-map-3.0.0
	>=dev-node/process-on-spawn-1.0.0
	>=dev-node/resolve-from-5.0.0
	>=dev-node/rimraf-3.0.2
	>=dev-node/signal-exit-3.0.2
	>=dev-node/spawn-wrap-2.0.0
	>=dev-node/test-exclude-6.0.0
	>=dev-node/yargs-15.4.1
"
RDEPEND="${DEPEND}"

NPM_LOCAL_MODULES="
@istanbuljs
"

S="${WORKDIR}/package"

inherit npmv1

