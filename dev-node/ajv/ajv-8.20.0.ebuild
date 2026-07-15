# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=7

DESCRIPTION="Another JSON Schema Validator"
HOMEPAGE="https://ajv.js.org"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/fast-deep-equal-3.1.3
	>=dev-node/fast-uri-3.1.3
	>=dev-node/json-schema-traverse-1.0.0
	>=dev-node/require-from-string-2.0.2
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

NPM_PKG_DIRS="
	dist
"

inherit npmv1

