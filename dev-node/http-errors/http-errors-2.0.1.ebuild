# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=7

DESCRIPTION="Create HTTP error objects"
HOMEPAGE="http://www.npmjs.com/package/http-errors"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/depd-2.0.0
	>=dev-node/inherits-2.0.4
	>=dev-node/setprototypeof-1.2.0
	>=dev-node/statuses-2.0.2
	>=dev-node/toidentifier-1.0.1
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

