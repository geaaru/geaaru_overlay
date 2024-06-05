# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Delightful JavaScript Testing."
HOMEPAGE="https://jestjs.io/"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""
RESTRICT="network-sandbox"

DEPEND="
	>=dev-node/import-local-3.1.0
	>=dev-node/jest-cli-29.7.0
"
RDEPEND="${DEPEND}"

NPM_LOCAL_MODULES="
@jest
"

S="${WORKDIR}/package"

inherit npmv1

