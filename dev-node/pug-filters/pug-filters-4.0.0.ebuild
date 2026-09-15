# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=7

DESCRIPTION="Code for processing filters in pug templates"
HOMEPAGE="http://www.npmjs.com/package/pug-filters"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/constantinople-4.0.1
	>=dev-node/jstransformer-1.0.0
	>=dev-node/pug-error-2.1.0
	>=dev-node/pug-walk-2.0.0
	>=dev-node/resolve-1.22.12
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

