# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="resolve like require.resolve() on behalf of files asynchronously and synchronously"
HOMEPAGE="https://github.com/browserify/resolve#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/is-core-module-2.13.1
	>=dev-node/path-parse-1.0.7
	>=dev-node/supports-preserve-symlinks-flag-1.0.0
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

