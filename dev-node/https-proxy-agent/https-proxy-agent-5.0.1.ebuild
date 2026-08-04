# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=7

DESCRIPTION="An HTTP(s) proxy http.Agent implementation for HTTPS"
HOMEPAGE="http://www.npmjs.com/package/https-proxy-agent"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/agent-base-6.0.2
	>=dev-node/debug-4.3.5
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1
NPM_PKG_DIRS="
	dist
"

S="${WORKDIR}/package"

inherit npmv1

