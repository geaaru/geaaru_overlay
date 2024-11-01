# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="EditorConfig File Locator and Interpreter for Node.js"
HOMEPAGE="http://www.npmjs.com/package/editorconfig"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""
RESTRICT="network-sandbox"

DEPEND="
	>=dev-node/commander-10.0.1
	>=dev-node/minimatch-9.0.3
	>=dev-node/semver-7.6.3
"
RDEPEND="${DEPEND}"

NPM_LOCAL_MODULES="
@one-ini
"

S="${WORKDIR}/package"

inherit npmv1

