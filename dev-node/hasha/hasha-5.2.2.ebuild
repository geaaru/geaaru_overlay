# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Hashing made simple. Get the hash of a buffer/string/stream/file."
HOMEPAGE="http://www.npmjs.com/package/hasha"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/is-stream-2.0.0
	>=dev-node/type-fest-0.8.1
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

