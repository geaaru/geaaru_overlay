# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=7

DESCRIPTION="Yaml handling for TAP parsers and generators"
HOMEPAGE="https://github.com/tapjs/tapjs/tree/main/src/yaml#readme"

LICENSE="BlueOak-1.0.0"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/yaml-2.9.0
	>=dev-node/yaml-types-0.4.0
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

