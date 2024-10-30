# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="JavaScript test spies, stubs and mocks."
HOMEPAGE="https://sinonjs.org/"

LICENSE="BSD-3-Clause"
SLOT="0"
KEYWORDS="*"
IUSE=""
RESTRICT="network-sandbox"

DEPEND="
	>=dev-node/diff-5.2.0
	>=dev-node/nise-6.1.1
	>=dev-node/supports-color-7.2.0
"
RDEPEND="${DEPEND}"

NPM_LOCAL_MODULES="
@sinonjs
"

S="${WORKDIR}/package"

inherit npmv1

