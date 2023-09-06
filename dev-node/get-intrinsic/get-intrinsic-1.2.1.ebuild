# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Get and robustly cache all JS language-level intrinsics at first require time"
HOMEPAGE="https://github.com/ljharb/get-intrinsic#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/function-bind-1.1.1
	>=dev-node/has-1.0.3
	>=dev-node/has-proto-1.0.1
	>=dev-node/has-symbols-1.0.3
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

