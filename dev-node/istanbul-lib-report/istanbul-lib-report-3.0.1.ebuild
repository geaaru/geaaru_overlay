# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Base reporting library for istanbul"
HOMEPAGE="https://istanbul.js.org/"

LICENSE="BSD-3-Clause"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/istanbul-lib-coverage-3.2.2
	>=dev-node/make-dir-4.0.0
	>=dev-node/supports-color-7.2.0
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

