# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=7

DESCRIPTION="Compile time with for strict mode JavaScript"
HOMEPAGE="http://www.npmjs.com/package/with"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""
RESTRICT="network-sandbox"

DEPEND="
	>=dev-node/assert-never-1.2.1
	>=dev-node/babel-walk-3.0.1
"
RDEPEND="${DEPEND}"

NPM_LOCAL_MODULES="
@babel
"

S="${WORKDIR}/package"

inherit npmv1

