# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=7

DESCRIPTION="Find and load configuration from a package.json property, rc file, or CommonJS module"
HOMEPAGE="https://github.com/davidtheclark/cosmiconfig#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""
RESTRICT="network-sandbox"

DEPEND="
	>=dev-node/import-fresh-3.3.1
	>=dev-node/parse-json-5.2.0
	>=dev-node/path-type-4.0.0
	>=dev-node/yaml-1.10.2
"
RDEPEND="${DEPEND}"

NPM_LOCAL_MODULES="
@types
"

S="${WORKDIR}/package"

inherit npmv1

