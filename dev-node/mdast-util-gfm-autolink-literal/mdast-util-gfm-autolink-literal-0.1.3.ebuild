# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="mdast extension to parse and serialize GFM autolink literals"
HOMEPAGE="http://www.npmjs.com/package/mdast-util-gfm-autolink-literal"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/ccount-1.1.0
	>=dev-node/mdast-util-find-and-replace-1.1.1
	>=dev-node/micromark-2.11.4
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

