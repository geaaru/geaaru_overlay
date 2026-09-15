# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=7

DESCRIPTION="Check if a string is a valid JavaScript expression"
HOMEPAGE="http://www.npmjs.com/package/is-expression"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/acorn-7.4.1
	>=dev-node/object-assign-4.1.1
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

