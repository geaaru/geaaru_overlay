# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Stringify any JavaScript value."
HOMEPAGE="https://github.com/jestjs/jest"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""
RESTRICT="network-sandbox"

DEPEND="
	>=dev-node/ansi-styles-5.2.0
	>=dev-node/react-is-18.3.1
"
RDEPEND="${DEPEND}"

NPM_LOCAL_MODULES="
@jest
"

S="${WORKDIR}/package"

inherit npmv1

