# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Core istanbul API for JS code coverage"
HOMEPAGE="https://istanbul.js.org/"

LICENSE="BSD-3-Clause"
SLOT="0"
KEYWORDS="*"
IUSE=""
RESTRICT="network-sandbox"

DEPEND="
	>=dev-node/istanbul-lib-coverage-3.2.2
	>=dev-node/semver-7.6.2
"
RDEPEND="${DEPEND}"

NPM_LOCAL_MODULES="
@babel
@istanbuljs
"

S="${WORKDIR}/package"

inherit npmv1

