# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=7

DESCRIPTION="Create api documentation for TypeScript projects."
HOMEPAGE="https://typedoc.org"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="*"
IUSE=""
RESTRICT="network-sandbox"

DEPEND="
	>=dev-node/lunr-2.3.9
	>=dev-node/markdown-it-14.3.0
	>=dev-node/minimatch-10.2.5
	>=dev-node/yaml-2.9.0
"
RDEPEND="${DEPEND}"

NPM_LOCAL_MODULES="
@gerrit0
"

S="${WORKDIR}/package"

inherit npmv1

