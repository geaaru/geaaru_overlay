# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="A tiny (190B) and extremely fast utility to generate random IDs of fixed length"
HOMEPAGE="https://github.com/lukeed/hexoid#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1
NPM_PKG_DIRS="
	dist
"

S="${WORKDIR}/package"

inherit npmv1

