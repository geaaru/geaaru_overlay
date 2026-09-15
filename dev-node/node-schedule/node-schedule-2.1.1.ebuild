# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=7

DESCRIPTION="A cron-like and not-cron-like job scheduler for Node."
HOMEPAGE="http://www.npmjs.com/package/node-schedule"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/cron-parser-4.9.0
	>=dev-node/long-timeout-0.1.1
	>=dev-node/sorted-array-functions-1.3.0
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

