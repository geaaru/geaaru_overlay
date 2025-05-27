# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=7

DESCRIPTION="Additional JSON-Schema keywords for Ajv JSON validator"
HOMEPAGE="https://github.com/epoberezkin/ajv-keywords#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/fast-deep-equal-3.1.3
"
RDEPEND="${DEPEND}"

NPM_PKG_DIRS="
keywords
"


NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

