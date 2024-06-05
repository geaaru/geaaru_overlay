# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Create a new Jest project"
HOMEPAGE="https://github.com/jestjs/jest#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""
RESTRICT="network-sandbox"

DEPEND="
	>=dev-node/chalk-4.1.2
	>=dev-node/exit-0.1.2
	>=dev-node/graceful-fs-4.2.11
	>=dev-node/jest-config-29.7.0
	>=dev-node/jest-util-29.7.0
	>=dev-node/prompts-2.4.2
"
RDEPEND="${DEPEND}"

NPM_LOCAL_MODULES="
@jest
"

S="${WORKDIR}/package"

inherit npmv1

