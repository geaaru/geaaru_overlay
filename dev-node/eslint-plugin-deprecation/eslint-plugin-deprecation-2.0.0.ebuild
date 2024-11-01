# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="ESLint rule that reports usage of deprecated code"
HOMEPAGE="http://www.npmjs.com/package/eslint-plugin-deprecation"

LICENSE="LGPL-3.0-or-later"
SLOT="0"
KEYWORDS="*"
IUSE=""
RESTRICT="network-sandbox"

DEPEND="
	>=dev-node/tslib-2.8.0
	>=dev-node/tsutils-3.21.0
"
RDEPEND="${DEPEND}"

NPM_LOCAL_MODULES="
@typescript-eslint
"

S="${WORKDIR}/package"

inherit npmv1

