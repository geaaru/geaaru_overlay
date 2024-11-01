# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="BDD/TDD assertion library for node.js and the browser. Test framework agnostic."
HOMEPAGE="http://chaijs.com"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/assertion-error-1.1.0
	>=dev-node/check-error-1.0.3
	>=dev-node/deep-eql-4.1.4
	>=dev-node/get-func-name-2.0.2
	>=dev-node/loupe-2.3.7
	>=dev-node/pathval-1.1.1
	>=dev-node/type-detect-4.1.0
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

