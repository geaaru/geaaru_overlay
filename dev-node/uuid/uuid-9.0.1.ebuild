# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="RFC4122 (v1, v4, and v5) UUIDs"
HOMEPAGE="https://github.com/uuidjs/uuid#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1
NPM_BINS="
uuid => node-uuid-uuidjs
"

S="${WORKDIR}/package"

inherit npmv1

