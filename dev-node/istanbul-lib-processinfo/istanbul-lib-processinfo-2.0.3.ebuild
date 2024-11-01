# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="A utility for managing the processinfo folder that NYC uses."
HOMEPAGE="http://www.npmjs.com/package/istanbul-lib-processinfo"

LICENSE="ISC"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/archy-1.0.0
	>=dev-node/cross-spawn-7.0.3
	>=dev-node/istanbul-lib-coverage-3.2.2
	>=dev-node/p-map-3.0.0
	>=dev-node/rimraf-3.0.2
	>=dev-node/uuid-8.3.2
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

