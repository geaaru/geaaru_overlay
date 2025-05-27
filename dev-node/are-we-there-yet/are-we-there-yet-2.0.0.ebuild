# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=7

DESCRIPTION="Keep track of the overall completion of many disparate processes"
HOMEPAGE="https://github.com/npm/are-we-there-yet"

LICENSE="ISC"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/delegates-1.0.0
	>=dev-node/readable-stream-3.6.0
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

