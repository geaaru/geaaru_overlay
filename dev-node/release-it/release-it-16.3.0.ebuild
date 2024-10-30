# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Generic CLI tool to automate versioning and package publishing-related tasks."
HOMEPAGE="https://github.com/release-it/release-it#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""
RESTRICT="network-sandbox"

DEPEND="
	>=dev-node/async-retry-1.3.3
	>=dev-node/chalk-5.3.0
	>=dev-node/cosmiconfig-8.3.6
	>=dev-node/execa-7.2.0
	>=dev-node/git-url-parse-13.1.0
	>=dev-node/globby-13.2.2
	>=dev-node/got-13.0.0
	>=dev-node/inquirer-9.2.11
	>=dev-node/is-ci-3.0.1
	>=dev-node/issue-parser-6.0.0
	>=dev-node/lodash-4.17.21
	>=dev-node/mime-types-2.1.35
	>=dev-node/new-github-release-url-2.0.0
	>=dev-node/node-fetch-3.3.2
	>=dev-node/open-9.1.0
	>=dev-node/ora-7.0.1
	>=dev-node/os-name-5.1.0
	>=dev-node/promise-allsettled-1.0.7
	>=dev-node/proxy-agent-6.3.1
	>=dev-node/semver-7.5.4
	>=dev-node/shelljs-0.8.5
	>=dev-node/update-notifier-6.0.2
	>=dev-node/url-join-5.0.0
	>=dev-node/wildcard-match-5.1.2
	>=dev-node/yargs-parser-21.1.1
"
RDEPEND="${DEPEND}"

NPM_LOCAL_MODULES="
@iarna
@octokit
"

S="${WORKDIR}/package"

inherit npmv1

