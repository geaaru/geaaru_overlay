# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Run a child as if it's the foreground process.  Give it stdio.  Exit when it exits."
HOMEPAGE="https://github.com/tapjs/foreground-child#readme"

LICENSE="ISC"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/cross-spawn-7.0.3
	>=dev-node/signal-exit-3.0.7
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

