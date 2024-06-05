# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="istanbul reports"
HOMEPAGE="https://istanbul.js.org/"

LICENSE="BSD-3-Clause"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/html-escaper-2.0.2
	>=dev-node/istanbul-lib-report-3.0.1
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

