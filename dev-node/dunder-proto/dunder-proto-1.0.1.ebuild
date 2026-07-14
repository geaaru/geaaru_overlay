# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=7

DESCRIPTION="If available, the Object.prototype.__proto__ accessor and mutator, call-bound"
HOMEPAGE="https://github.com/es-shims/dunder-proto#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/call-bind-apply-helpers-1.0.2
	>=dev-node/es-errors-1.3.0
	>=dev-node/gopd-1.2.0
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

