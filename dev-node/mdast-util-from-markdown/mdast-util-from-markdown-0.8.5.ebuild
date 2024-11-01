# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="mdast utility to parse markdown"
HOMEPAGE="http://www.npmjs.com/package/mdast-util-from-markdown"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""
RESTRICT="network-sandbox"

DEPEND="
	>=dev-node/mdast-util-to-string-2.0.0
	>=dev-node/micromark-2.11.4
	>=dev-node/parse-entities-2.0.0
	>=dev-node/unist-util-stringify-position-2.0.3
"
RDEPEND="${DEPEND}"

NPM_LOCAL_MODULES="
@types
"

S="${WORKDIR}/package"

inherit npmv1

