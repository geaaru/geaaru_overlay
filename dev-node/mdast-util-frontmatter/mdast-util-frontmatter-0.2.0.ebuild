# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="mdast extension to parse and serialize frontmatter (YAML, TOML, etc)"
HOMEPAGE="http://www.npmjs.com/package/mdast-util-frontmatter"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/micromark-extension-frontmatter-0.2.2
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

