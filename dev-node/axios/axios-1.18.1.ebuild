# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=7

DESCRIPTION="Promise based HTTP client for the browser and node.js"
HOMEPAGE="https://axios-http.com"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/follow-redirects-1.16.0
	>=dev-node/form-data-4.0.6
	>=dev-node/https-proxy-agent-5.0.1
	>=dev-node/proxy-from-env-2.1.0
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

NPM_PKG_DIRS="
	dist
"

S="${WORKDIR}/package"

inherit npmv1

