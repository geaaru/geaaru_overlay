# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Parse HTML character references: fast, spec-compliant, positional information"
HOMEPAGE="http://www.npmjs.com/package/parse-entities"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/character-entities-1.2.4
	>=dev-node/character-entities-legacy-1.1.4
	>=dev-node/character-reference-invalid-1.1.4
	>=dev-node/is-alphanumerical-1.0.4
	>=dev-node/is-decimal-1.0.4
	>=dev-node/is-hexadecimal-1.0.4
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

