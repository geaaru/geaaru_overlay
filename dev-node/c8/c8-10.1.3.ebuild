# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=7

DESCRIPTION="output coverage reports using Node.js' built in coverage"
HOMEPAGE="http://www.npmjs.com/package/c8"

LICENSE="ISC"
SLOT="0"
KEYWORDS="*"
IUSE=""
RESTRICT="network-sandbox"

DEPEND="
	>=dev-node/find-up-5.0.0
	>=dev-node/foreground-child-3.3.0
	>=dev-node/istanbul-lib-coverage-3.2.2
	>=dev-node/istanbul-lib-report-3.0.1
	>=dev-node/istanbul-reports-3.1.7
	>=dev-node/test-exclude-7.0.1
	>=dev-node/v8-to-istanbul-9.3.0
	>=dev-node/yargs-17.7.2
	>=dev-node/yargs-parser-21.1.1
"
RDEPEND="${DEPEND}"

NPM_LOCAL_MODULES="
@bcoe
@istanbuljs
"

S="${WORKDIR}/package"

inherit npmv1

