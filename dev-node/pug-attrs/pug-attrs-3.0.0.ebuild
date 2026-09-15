# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=7

DESCRIPTION="Generate code for Pug attributes"
HOMEPAGE="http://www.npmjs.com/package/pug-attrs"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/constantinople-4.0.1
	>=dev-node/js-stringify-1.0.2
	>=dev-node/pug-runtime-3.0.1
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

