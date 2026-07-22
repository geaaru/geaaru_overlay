# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=7

DESCRIPTION="Opinionated, caching, retrying fetch client"
HOMEPAGE="http://www.npmjs.com/package/make-fetch-happen"

LICENSE="ISC"
SLOT="0"
KEYWORDS="*"
IUSE=""
RESTRICT="network-sandbox"

DEPEND="
	>=dev-node/cacache-20.0.4
	>=dev-node/http-cache-semantics-4.1.1
	>=dev-node/minipass-7.1.3
	>=dev-node/minipass-fetch-5.0.2
	>=dev-node/minipass-flush-1.0.7
	>=dev-node/minipass-pipeline-1.2.4
	>=dev-node/negotiator-1.0.0
	>=dev-node/proc-log-6.1.0
	>=dev-node/ssri-13.0.1
"
RDEPEND="${DEPEND}"

NPM_LOCAL_MODULES="
@gar
@npmcli
"

S="${WORKDIR}/package"

inherit npmv1

