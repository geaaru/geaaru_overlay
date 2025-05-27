# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=7

DESCRIPTION="request body parsing for co"
HOMEPAGE="http://www.npmjs.com/package/co-body"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""
RESTRICT="network-sandbox"

DEPEND="
	>=dev-node/inflation-2.1.0
	>=dev-node/qs-6.11.2
	>=dev-node/raw-body-2.5.2
	>=dev-node/type-is-1.6.18
"
RDEPEND="${DEPEND}"

NPM_LOCAL_MODULES="
@hapi
"

S="${WORKDIR}/package"

inherit npmv1

