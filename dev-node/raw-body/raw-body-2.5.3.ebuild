# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=7

DESCRIPTION="Get and validate the raw body of a readable stream."
HOMEPAGE="http://www.npmjs.com/package/raw-body"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/bytes-3.1.2
	>=dev-node/http-errors-2.0.1
	>=dev-node/iconv-lite-0.4.24
	>=dev-node/unpipe-1.0.0
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

