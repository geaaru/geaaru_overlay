# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=7

DESCRIPTION="Store information about any JS value in a side channel. Uses WeakMap if available."
HOMEPAGE="https://github.com/ljharb/side-channel#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/call-bind-1.0.7
	>=dev-node/es-errors-1.3.0
	>=dev-node/get-intrinsic-1.2.4
	>=dev-node/object-inspect-1.13.4
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

