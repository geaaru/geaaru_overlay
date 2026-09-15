# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=7

DESCRIPTION="Default code-generator for pug.  It generates HTML via a JavaScript template function."
HOMEPAGE="http://www.npmjs.com/package/pug-code-gen"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/constantinople-4.0.1
	>=dev-node/doctypes-1.1.0
	>=dev-node/js-stringify-1.0.2
	>=dev-node/pug-attrs-3.0.0
	>=dev-node/pug-error-2.1.0
	>=dev-node/pug-runtime-3.0.1
	>=dev-node/void-elements-3.1.0
	>=dev-node/with-7.0.2
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

