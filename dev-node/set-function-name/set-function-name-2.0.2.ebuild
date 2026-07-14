# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=7

DESCRIPTION="Set a function's name property"
HOMEPAGE="https://github.com/ljharb/set-function-name#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/define-data-property-1.1.4
	>=dev-node/es-errors-1.3.0
	>=dev-node/functions-have-names-1.2.3
	>=dev-node/has-property-descriptors-1.0.2
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

