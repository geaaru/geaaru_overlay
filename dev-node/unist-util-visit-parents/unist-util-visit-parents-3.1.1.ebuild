# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="unist utility to recursively walk over nodes, with ancestral information"
HOMEPAGE="http://www.npmjs.com/package/unist-util-visit-parents"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""
RESTRICT="network-sandbox"

DEPEND="
	>=dev-node/unist-util-is-4.1.0
"
RDEPEND="${DEPEND}"

NPM_LOCAL_MODULES="
@types
"

S="${WORKDIR}/package"

inherit npmv1

