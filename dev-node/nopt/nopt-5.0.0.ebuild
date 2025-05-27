# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=7

DESCRIPTION="Option parsing for Node, supporting types, shorthands, etc. Used by npm."
HOMEPAGE="http://www.npmjs.com/package/nopt"

LICENSE="ISC"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/abbrev-1.1.1
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

