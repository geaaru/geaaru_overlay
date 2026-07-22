# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=7

DESCRIPTION="A simple JSON parser that supports comments and optional trailing commas."
HOMEPAGE="http://www.npmjs.com/package/jsonc-simple-parser"

SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/reghex-3.0.2
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

