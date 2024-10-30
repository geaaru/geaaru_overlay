# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="mdast utility to serialize markdown"
HOMEPAGE="http://www.npmjs.com/package/mdast-util-to-markdown"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""
RESTRICT="network-sandbox"

DEPEND="
	>=dev-node/longest-streak-2.0.4
	>=dev-node/mdast-util-to-string-2.0.0
	>=dev-node/parse-entities-2.0.0
	>=dev-node/repeat-string-1.6.1
	>=dev-node/zwitch-1.0.5
"
RDEPEND="${DEPEND}"

NPM_LOCAL_MODULES="
@types
"

S="${WORKDIR}/package"

inherit npmv1

