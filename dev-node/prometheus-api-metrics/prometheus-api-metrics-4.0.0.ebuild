# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=7

DESCRIPTION="API and process monitoring with Prometheus for Node.js micro-service"
HOMEPAGE="https://github.com/PayU/prometheus-api-metrics#readme"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/debug-3.2.7
	>=dev-node/lodash-get-4.4.2
	>=dev-node/pkginfo-0.4.1
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1
NPM_PKG_DIRS="
	src
	dist
"

S="${WORKDIR}/package"

inherit npmv1

