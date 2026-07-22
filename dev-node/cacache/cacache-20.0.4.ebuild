# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=7

DESCRIPTION="Fast, fault-tolerant, cross-platform, disk-based, data-agnostic, content-addressable cache."
HOMEPAGE="http://www.npmjs.com/package/cacache"

LICENSE="ISC"
SLOT="0"
KEYWORDS="*"
IUSE=""
RESTRICT="network-sandbox"

DEPEND="
	>=dev-node/fs-minipass-3.0.3
	>=dev-node/glob-13.0.6
	>=dev-node/lru-cache-11.5.2
	>=dev-node/minipass-7.1.3
	>=dev-node/minipass-collect-2.0.1
	>=dev-node/minipass-flush-1.0.7
	>=dev-node/minipass-pipeline-1.2.4
	>=dev-node/p-map-7.0.5
	>=dev-node/ssri-13.0.1
"
RDEPEND="${DEPEND}"

NPM_LOCAL_MODULES="
@npmcli
"

S="${WORKDIR}/package"

inherit npmv1

