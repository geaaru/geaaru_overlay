# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=7

DESCRIPTION="Check dependencies in your node module"
HOMEPAGE="http://www.npmjs.com/package/depcheck"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""
RESTRICT="network-sandbox"

DEPEND="
	>=dev-node/callsite-1.0.0
	>=dev-node/camelcase-6.3.0
	>=dev-node/cosmiconfig-7.1.0
	>=dev-node/debug-4.3.5
	>=dev-node/deps-regex-0.2.0
	>=dev-node/findup-sync-5.0.0
	>=dev-node/ignore-5.3.2
	>=dev-node/is-core-module-2.16.1
	>=dev-node/js-yaml-3.14.1
	>=dev-node/json5-2.2.3
	>=dev-node/lodash-4.17.21
	>=dev-node/minimatch-7.4.6
	>=dev-node/multimatch-5.0.0
	>=dev-node/please-upgrade-node-3.2.0
	>=dev-node/readdirp-3.6.0
	>=dev-node/require-package-name-2.0.1
	>=dev-node/resolve-1.22.8
	>=dev-node/resolve-from-5.0.0
	>=dev-node/semver-7.6.2
	>=dev-node/yargs-16.2.0
"
RDEPEND="${DEPEND}"

NPM_LOCAL_MODULES="
@babel
@vue
"

S="${WORKDIR}/package"

inherit npmv1

