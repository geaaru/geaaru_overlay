# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=7

DESCRIPTION="resolve like require.resolve() on behalf of files asynchronously and synchronously"
HOMEPAGE="http://www.npmjs.com/package/resolve"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/es-errors-1.3.0
	>=dev-node/is-core-module-2.16.1
	>=dev-node/path-parse-1.0.7
	>=dev-node/supports-preserve-symlinks-flag-1.0.0
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

