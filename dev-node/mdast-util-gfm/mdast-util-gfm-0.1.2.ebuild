# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="mdast extension to parse and serialize GFM (GitHub Flavored Markdown)"
HOMEPAGE="http://www.npmjs.com/package/mdast-util-gfm"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/mdast-util-gfm-autolink-literal-0.1.3
	>=dev-node/mdast-util-gfm-strikethrough-0.2.3
	>=dev-node/mdast-util-gfm-table-0.1.6
	>=dev-node/mdast-util-gfm-task-list-item-0.1.6
	>=dev-node/mdast-util-to-markdown-0.6.5
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

