# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=7

DESCRIPTION="Client for prometheus"
HOMEPAGE="https://github.com/siimon/prom-client"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="*"
IUSE=""
RESTRICT="network-sandbox"

DEPEND="
	>=dev-node/tdigest-0.1.2
"
RDEPEND="${DEPEND}"

NPM_LOCAL_MODULES="
@opentelemetry
"

S="${WORKDIR}/package"

inherit npmv1

