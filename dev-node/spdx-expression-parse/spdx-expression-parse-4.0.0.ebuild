# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=7

DESCRIPTION="parse SPDX license expressions"
HOMEPAGE="http://www.npmjs.com/package/spdx-expression-parse"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/spdx-exceptions-2.5.0
	>=dev-node/spdx-license-ids-3.0.23
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

