# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="User-friendly glob matching"
HOMEPAGE="http://www.npmjs.com/package/globby"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/array-union-2.1.0
	>=dev-node/dir-glob-3.0.1
	>=dev-node/fast-glob-3.3.2
	>=dev-node/ignore-5.3.2
	>=dev-node/merge2-1.4.1
	>=dev-node/slash-3.0.0
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

