# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Virtual file format for text processing"
HOMEPAGE="http://www.npmjs.com/package/vfile"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""
RESTRICT="network-sandbox"

DEPEND="
	>=dev-node/is-buffer-2.0.3
	>=dev-node/unist-util-stringify-position-2.0.3
	>=dev-node/vfile-message-2.0.4
"
RDEPEND="${DEPEND}"

NPM_LOCAL_MODULES="
@types
"

S="${WORKDIR}/package"

inherit npmv1

