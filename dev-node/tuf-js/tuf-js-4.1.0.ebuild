# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=7

DESCRIPTION="JavaScript implementation of The Update Framework (TUF)"
HOMEPAGE="https://github.com/theupdateframework/tuf-js/tree/main/packages/client#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""
RESTRICT="network-sandbox"

DEPEND="
	>=dev-node/debug-4.4.3
	>=dev-node/make-fetch-happen-15.0.6
"
RDEPEND="${DEPEND}"

NPM_LOCAL_MODULES="
@tufjs
"

S="${WORKDIR}/package"

inherit npmv1

