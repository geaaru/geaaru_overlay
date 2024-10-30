# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="remark plugin to support frontmatter (yaml, toml, and more)"
HOMEPAGE="http://www.npmjs.com/package/remark-frontmatter"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/mdast-util-frontmatter-0.2.0
	>=dev-node/micromark-extension-frontmatter-0.2.2
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

