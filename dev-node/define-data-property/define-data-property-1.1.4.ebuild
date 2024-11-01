# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Define a data property on an object. Will fall back to assignment in an engine without descriptors."
HOMEPAGE="https://github.com/ljharb/define-data-property#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/es-define-property-1.0.0
	>=dev-node/es-errors-1.3.0
	>=dev-node/gopd-1.0.1
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

