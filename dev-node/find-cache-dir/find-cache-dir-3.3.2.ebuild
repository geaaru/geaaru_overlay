# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Finds the common standard cache directory"
HOMEPAGE="http://www.npmjs.com/package/find-cache-dir"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/commondir-1.0.1
	>=dev-node/make-dir-3.1.0
	>=dev-node/pkg-dir-4.2.0
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

