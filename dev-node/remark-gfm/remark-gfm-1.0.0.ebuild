# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="remark plugin to support GFM (autolink literals, strikethrough, tables, tasklists)"
HOMEPAGE="http://www.npmjs.com/package/remark-gfm"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/mdast-util-gfm-0.1.2
	>=dev-node/micromark-extension-gfm-0.3.3
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

