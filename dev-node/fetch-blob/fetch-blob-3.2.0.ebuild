# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Blob & File implementation in Node.js, originally from node-fetch."
HOMEPAGE="https://github.com/node-fetch/fetch-blob#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/node-domexception-1.0.0
	>=dev-node/web-streams-polyfill-3.3.3
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

