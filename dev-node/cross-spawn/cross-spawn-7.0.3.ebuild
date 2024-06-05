# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Cross platform child_process#spawn and child_process#spawnSync"
HOMEPAGE="https://github.com/moxystudio/node-cross-spawn"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/path-key-3.1.1
	>=dev-node/shebang-command-2.0.0
	>=dev-node/which-2.0.2
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

