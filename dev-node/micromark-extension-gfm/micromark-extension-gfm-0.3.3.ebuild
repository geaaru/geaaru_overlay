# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="micromark extension to support GFM (GitHub Flavored Markdown)"
HOMEPAGE="http://www.npmjs.com/package/micromark-extension-gfm"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/micromark-2.11.4
	>=dev-node/micromark-extension-gfm-autolink-literal-0.5.7
	>=dev-node/micromark-extension-gfm-strikethrough-0.6.5
	>=dev-node/micromark-extension-gfm-table-0.4.3
	>=dev-node/micromark-extension-gfm-tagfilter-0.3.0
	>=dev-node/micromark-extension-gfm-task-list-item-0.3.3
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

