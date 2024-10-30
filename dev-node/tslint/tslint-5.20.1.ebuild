# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="An extensible static analysis linter for the TypeScript language"
HOMEPAGE="https://palantir.github.io/tslint"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="*"
IUSE=""
RESTRICT="network-sandbox"

DEPEND="
	>=dev-node/builtin-modules-1.1.1
	>=dev-node/chalk-2.4.2
	>=dev-node/commander-2.17.1
	>=dev-node/diff-4.0.2
	>=dev-node/glob-7.1.2
	>=dev-node/js-yaml-3.14.1
	>=dev-node/minimatch-3.0.4
	>=dev-node/mkdirp-0.5.5
	>=dev-node/resolve-1.22.8
	>=dev-node/semver-5.3.0
	>=dev-node/tslib-1.9.3
	>=dev-node/tsutils-2.29.0
"
RDEPEND="${DEPEND}"

NPM_LOCAL_MODULES="
@babel
"

S="${WORKDIR}/package"

inherit npmv1

