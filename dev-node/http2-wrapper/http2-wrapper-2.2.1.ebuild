# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="HTTP2 client, just with the familiar https API"
HOMEPAGE="https://github.com/szmarczak/http2-wrapper#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/quick-lru-5.1.1
	>=dev-node/resolve-alpn-1.2.1
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

