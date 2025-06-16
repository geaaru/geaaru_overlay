# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=7

DESCRIPTION="An AST-based pattern checker for JavaScript."
HOMEPAGE="https://eslint.org"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""
RESTRICT="network-sandbox"

DEPEND="
	>=dev-node/ajv-6.12.6
	>=dev-node/chalk-4.1.2
	>=dev-node/cross-spawn-7.0.6
	>=dev-node/debug-4.4.1
	>=dev-node/escape-string-regexp-4.0.0
	>=dev-node/eslint-scope-8.3.0
	>=dev-node/eslint-visitor-keys-4.2.1
	>=dev-node/espree-10.3.0
	>=dev-node/esquery-1.6.0
	>=dev-node/esutils-2.0.3
	>=dev-node/fast-deep-equal-3.1.3
	>=dev-node/file-entry-cache-8.0.0
	>=dev-node/find-up-5.0.0
	>=dev-node/glob-parent-6.0.2
	>=dev-node/ignore-5.3.2
	>=dev-node/imurmurhash-0.1.4
	>=dev-node/is-glob-4.0.3
	>=dev-node/json-stable-stringify-without-jsonify-1.0.1
	>=dev-node/lodash-merge-4.6.2
	>=dev-node/minimatch-3.1.2
	>=dev-node/natural-compare-1.4.0
	>=dev-node/optionator-0.9.4
"
RDEPEND="${DEPEND}"

NPM_LOCAL_MODULES="
@eslint-community
@eslint
@humanfs
@humanwhocodes
@types
"

S="${WORKDIR}/package"

inherit npmv1

