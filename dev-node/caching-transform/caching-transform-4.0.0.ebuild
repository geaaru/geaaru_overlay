# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Wraps a transform and provides caching"
HOMEPAGE="http://www.npmjs.com/package/caching-transform"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/hasha-5.2.2
	>=dev-node/make-dir-3.1.0
	>=dev-node/package-hash-4.0.0
	>=dev-node/write-file-atomic-3.0.3
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

