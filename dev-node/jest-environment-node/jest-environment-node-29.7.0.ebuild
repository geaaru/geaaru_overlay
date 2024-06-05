# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="jest-environment-node nodejs module"
HOMEPAGE="https://github.com/jestjs/jest#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""
RESTRICT="network-sandbox"

DEPEND="
	>=dev-node/jest-mock-29.7.0
	>=dev-node/jest-util-29.7.0
"
RDEPEND="${DEPEND}"

NPM_LOCAL_MODULES="
@jest
@types
"

S="${WORKDIR}/package"

inherit npmv1

