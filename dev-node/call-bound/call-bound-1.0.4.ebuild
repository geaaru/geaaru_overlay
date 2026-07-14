# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=7

DESCRIPTION="Robust call-bound JavaScript intrinsics, using call-bind and get-intrinsic."
HOMEPAGE="https://github.com/ljharb/call-bound#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/call-bind-apply-helpers-1.0.2
	>=dev-node/get-intrinsic-1.3.0
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

