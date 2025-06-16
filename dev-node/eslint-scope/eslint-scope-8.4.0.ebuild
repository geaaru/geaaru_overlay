# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=7

DESCRIPTION="ECMAScript scope analyzer for ESLint"
HOMEPAGE="https://github.com/eslint/js/blob/main/packages/eslint-scope/README.md"

LICENSE="BSD-2-Clause"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/esrecurse-4.3.0
	>=dev-node/estraverse-5.3.0
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

