# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Update notifications for your CLI app"
HOMEPAGE="http://www.npmjs.com/package/update-notifier"

LICENSE="BSD-2-Clause"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/boxen-7.1.1
	>=dev-node/chalk-5.3.0
	>=dev-node/configstore-6.0.0
	>=dev-node/has-yarn-3.0.0
	>=dev-node/import-lazy-4.0.0
	>=dev-node/is-ci-3.0.1
	>=dev-node/is-installed-globally-0.4.0
	>=dev-node/is-npm-6.0.0
	>=dev-node/is-yarn-global-0.4.1
	>=dev-node/latest-version-7.0.0
	>=dev-node/pupa-3.1.0
	>=dev-node/semver-7.6.2
	>=dev-node/semver-diff-4.0.0
	>=dev-node/xdg-basedir-5.1.0
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

