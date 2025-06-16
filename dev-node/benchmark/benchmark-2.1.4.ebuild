# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=7

DESCRIPTION="A benchmarking library that supports high-resolution timers & returns statistically significant results."
HOMEPAGE="https://benchmarkjs.com/"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/lodash-4.17.21
	>=dev-node/platform-1.3.6
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

