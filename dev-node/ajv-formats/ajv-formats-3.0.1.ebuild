# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=7

DESCRIPTION="Format validation for Ajv v7+"
HOMEPAGE="https://github.com/ajv-validator/ajv-formats#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/ajv-8.17.1
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

NPM_PKG_DIRS="
	dist
"

inherit npmv1

