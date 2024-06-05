# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Source maps support for istanbul"
HOMEPAGE="https://istanbul.js.org/"

LICENSE="BSD-3-Clause"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/debug-4.3.5
	>=dev-node/istanbul-lib-coverage-3.2.2
	>=dev-node/source-map-0.6.1
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

