# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="A node.js module for parsing form data, especially file uploads."
HOMEPAGE="https://github.com/node-formidable/formidable"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/dezalgo-1.0.4
	>=dev-node/hexoid-1.0.0
	>=dev-node/once-1.4.0
	>=dev-node/qs-6.11.2
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

