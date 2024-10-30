# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Wrap all spawned Node.js child processes by adding environs and arguments ahead of the main JavaScript file argument."
HOMEPAGE="https://github.com/istanbuljs/spawn-wrap#readme"

LICENSE="ISC"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/foreground-child-2.0.0
	>=dev-node/is-windows-1.0.2
	>=dev-node/make-dir-3.1.0
	>=dev-node/rimraf-3.0.2
	>=dev-node/signal-exit-3.0.7
	>=dev-node/which-2.0.2
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

