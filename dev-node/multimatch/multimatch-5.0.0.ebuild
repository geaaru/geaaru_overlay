# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=7

DESCRIPTION="Extends minimatch.match() with support for multiple patterns"
HOMEPAGE="http://www.npmjs.com/package/multimatch"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""
RESTRICT="network-sandbox"

DEPEND="
	>=dev-node/array-differ-3.0.0
	>=dev-node/array-union-2.1.0
	>=dev-node/arrify-2.0.1
	>=dev-node/minimatch-3.0.4
"
RDEPEND="${DEPEND}"

NPM_LOCAL_MODULES="
@types
"

S="${WORKDIR}/package"

inherit npmv1

