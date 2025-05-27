# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=7

DESCRIPTION="logger for npm"
HOMEPAGE="http://www.npmjs.com/package/npmlog"

LICENSE="ISC"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/are-we-there-yet-2.0.0
	>=dev-node/console-control-strings-1.1.0
	>=dev-node/gauge-3.0.2
	>=dev-node/set-blocking-2.0.0
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

