# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=7

DESCRIPTION="tar for node"
HOMEPAGE="http://www.npmjs.com/package/tar"

LICENSE="ISC"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/chownr-2.0.0
	>=dev-node/fs-minipass-2.1.0
	>=dev-node/minipass-5.0.0
	>=dev-node/minizlib-2.1.2
	>=dev-node/mkdirp-1.0.4
	>=dev-node/yallist-4.0.0
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

