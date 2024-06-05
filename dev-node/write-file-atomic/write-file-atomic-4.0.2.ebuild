# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Write files in an atomic fashion w/configurable ownership"
HOMEPAGE="https://github.com/npm/write-file-atomic"

LICENSE="ISC"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/imurmurhash-0.1.4
	>=dev-node/signal-exit-3.0.7
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

