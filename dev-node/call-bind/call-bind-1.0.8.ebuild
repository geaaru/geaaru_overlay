# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=7

DESCRIPTION="Robustly .call.bind() a function"
HOMEPAGE="https://github.com/ljharb/call-bind#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/call-bind-apply-helpers-1.0.2
	>=dev-node/es-define-property-1.0.1
	>=dev-node/get-intrinsic-1.3.0
	>=dev-node/set-function-length-1.2.2
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

