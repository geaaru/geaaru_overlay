# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="mdast extension to parse and serialize GFM tables"
HOMEPAGE="http://www.npmjs.com/package/mdast-util-gfm-table"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/markdown-table-2.0.0
	>=dev-node/mdast-util-to-markdown-0.6.5
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

