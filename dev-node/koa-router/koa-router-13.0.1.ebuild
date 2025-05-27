# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=7

DESCRIPTION="Router middleware for koa. Maintained by Forward Email and Lad."
HOMEPAGE="https://github.com/koajs/router"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/http-errors-2.0.0
	>=dev-node/koa-compose-4.1.0
	>=dev-node/path-to-regexp-8.2.0
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

