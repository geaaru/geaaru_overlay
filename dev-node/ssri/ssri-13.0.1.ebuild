# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=7

DESCRIPTION="Standard Subresource Integrity library -- parses, serializes, generates, and verifies integrity metadata according to the SRI spec."
HOMEPAGE="http://www.npmjs.com/package/ssri"

LICENSE="ISC"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/minipass-7.1.3
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

