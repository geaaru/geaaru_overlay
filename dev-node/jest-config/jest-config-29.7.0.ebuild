# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="jest-config nodejs module"
HOMEPAGE="https://github.com/jestjs/jest#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""
RESTRICT="network-sandbox"

DEPEND="
	>=dev-node/babel-jest-29.7.0
	>=dev-node/chalk-4.1.2
	>=dev-node/ci-info-3.9.0
	>=dev-node/deepmerge-4.3.1
	>=dev-node/glob-7.1.3
	>=dev-node/graceful-fs-4.2.11
	>=dev-node/jest-circus-29.7.0
	>=dev-node/jest-environment-node-29.7.0
	>=dev-node/jest-get-type-29.6.3
	>=dev-node/jest-regex-util-29.6.3
	>=dev-node/jest-resolve-29.7.0
	>=dev-node/jest-runner-29.7.0
	>=dev-node/jest-util-29.7.0
	>=dev-node/jest-validate-29.7.0
	>=dev-node/micromatch-4.0.7
	>=dev-node/parse-json-5.2.0
	>=dev-node/pretty-format-29.7.0
	>=dev-node/slash-3.0.0
	>=dev-node/strip-json-comments-3.1.1
"
RDEPEND="${DEPEND}"

NPM_LOCAL_MODULES="
@babel
@jest
"

S="${WORKDIR}/package"

inherit npmv1

