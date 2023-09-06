# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="A Koa body parser middleware. Supports multipart, urlencoded and JSON request bodies."
HOMEPAGE="https://github.com/koajs/koa-body#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""
RESTRICT="network-sandbox"

DEPEND="
	>=dev-node/co-body-6.1.0
	>=dev-node/formidable-2.1.2
	>=dev-node/zod-3.22.2
"
RDEPEND="${DEPEND}"

NPM_LOCAL_MODULES="
@types
"

S="${WORKDIR}/package"

inherit npmv1

