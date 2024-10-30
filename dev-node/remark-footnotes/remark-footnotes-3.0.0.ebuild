# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="remark plugin to add support for pandoc footnotes"
HOMEPAGE="http://www.npmjs.com/package/remark-footnotes"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/mdast-util-footnote-0.1.7
	>=dev-node/micromark-extension-footnote-0.3.2
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

