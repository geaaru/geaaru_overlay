# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Find and load configuration from a package.json property, rc file, TypeScript module, and more!"
HOMEPAGE="https://github.com/cosmiconfig/cosmiconfig#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/import-fresh-3.3.0
	>=dev-node/js-yaml-4.1.0
	>=dev-node/parse-json-5.2.0
	>=dev-node/path-type-4.0.0
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

