# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Is this specifier a node.js core module?"
HOMEPAGE="https://github.com/inspect-js/is-core-module"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/hasown-2.0.2
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

NPM_LOCAL_MODULES="
	core.json
"

S="${WORKDIR}/package"

inherit npmv1

