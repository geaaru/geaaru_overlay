# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="convert from v8 coverage format to istanbul's format"
HOMEPAGE="https://github.com/istanbuljs/v8-to-istanbul#readme"

LICENSE="ISC"
SLOT="0"
KEYWORDS="*"
IUSE=""
RESTRICT="network-sandbox"

DEPEND="
	>=dev-node/convert-source-map-2.0.0
"
RDEPEND="${DEPEND}"

NPM_LOCAL_MODULES="
@jridgewell
@types
"

S="${WORKDIR}/package"

inherit npmv1

