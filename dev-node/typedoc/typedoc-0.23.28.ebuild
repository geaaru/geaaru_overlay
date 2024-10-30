# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Create api documentation for TypeScript projects."
HOMEPAGE="https://typedoc.org"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/lunr-2.3.9
	>=dev-node/marked-4.3.0
	>=dev-node/minimatch-7.4.6
	>=dev-node/shiki-0.14.7
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

