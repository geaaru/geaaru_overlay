# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Process execution for humans"
HOMEPAGE="https://github.com/sindresorhus/execa#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/cross-spawn-7.0.3
	>=dev-node/get-stream-6.0.1
	>=dev-node/human-signals-2.1.0
	>=dev-node/is-stream-2.0.1
	>=dev-node/merge-stream-2.0.0
	>=dev-node/npm-run-path-4.0.1
	>=dev-node/onetime-5.1.2
	>=dev-node/signal-exit-3.0.7
	>=dev-node/strip-final-newline-2.0.0
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

