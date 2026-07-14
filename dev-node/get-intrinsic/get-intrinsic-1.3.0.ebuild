# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=7

DESCRIPTION="Get and robustly cache all JS language-level intrinsics at first require time"
HOMEPAGE="https://github.com/ljharb/get-intrinsic#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/call-bind-apply-helpers-1.0.2
	>=dev-node/es-define-property-1.0.1
	>=dev-node/es-errors-1.3.0
	>=dev-node/es-object-atoms-1.1.2
	>=dev-node/function-bind-1.1.2
	>=dev-node/get-proto-1.0.1
	>=dev-node/gopd-1.2.0
	>=dev-node/has-symbols-1.1.0
	>=dev-node/hasown-2.0.4
	>=dev-node/math-intrinsics-1.1.0
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

