# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=7

DESCRIPTION="tar for node"
HOMEPAGE="http://www.npmjs.com/package/tar"

LICENSE="BlueOak-1.0.0"
SLOT="0"
KEYWORDS="*"
IUSE=""
RESTRICT="network-sandbox"

DEPEND="
	>=dev-node/chownr-3.0.0
	>=dev-node/minipass-7.1.3
	>=dev-node/minizlib-3.1.0
	>=dev-node/yallist-5.0.0
"
RDEPEND="${DEPEND}"

NPM_LOCAL_MODULES="
@isaacs
"

S="${WORKDIR}/package"

inherit npmv1

