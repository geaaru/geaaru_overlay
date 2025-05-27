# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=7

DESCRIPTION="Minimal and efficient cross-platform file watching library"
HOMEPAGE="https://github.com/paulmillr/chokidar"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/anymatch-3.1.3
	>=dev-node/braces-3.0.3
	>=dev-node/glob-parent-5.1.2
	>=dev-node/is-binary-path-2.1.0
	>=dev-node/is-glob-4.0.3
	>=dev-node/normalize-path-3.0.0
	>=dev-node/readdirp-3.6.0
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

