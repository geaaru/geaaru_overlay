# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Babel plugin to hoist jest.disableAutomock, jest.enableAutomock, jest.unmock, jest.mock, calls above import statements."
HOMEPAGE="https://github.com/jestjs/jest"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""
RESTRICT="network-sandbox"

DEPEND="
"
RDEPEND="${DEPEND}"

NPM_LOCAL_MODULES="
@babel
@types
"

S="${WORKDIR}/package"

inherit npmv1

