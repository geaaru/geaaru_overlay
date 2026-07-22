# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=7

DESCRIPTION="Fetch-based http client for use with npm registry APIs"
HOMEPAGE="http://www.npmjs.com/package/npm-registry-fetch"

LICENSE="ISC"
SLOT="0"
KEYWORDS="*"
IUSE=""
RESTRICT="network-sandbox"

DEPEND="
	>=dev-node/jsonparse-1.3.1
	>=dev-node/make-fetch-happen-15.0.6
	>=dev-node/minipass-7.1.3
	>=dev-node/minipass-fetch-5.0.2
	>=dev-node/minizlib-3.1.0
	>=dev-node/npm-package-arg-13.0.2
	>=dev-node/proc-log-6.1.0
"
RDEPEND="${DEPEND}"

NPM_LOCAL_MODULES="
@npmcli
"

S="${WORKDIR}/package"

inherit npmv1

