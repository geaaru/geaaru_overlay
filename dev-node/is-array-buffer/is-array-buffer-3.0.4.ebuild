# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Is this value a JS ArrayBuffer?"
HOMEPAGE="https://github.com/inspect-js/is-array-buffer#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/call-bind-1.0.2
	>=dev-node/get-intrinsic-1.2.1
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

