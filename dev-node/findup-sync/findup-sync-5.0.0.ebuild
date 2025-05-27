# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=7

DESCRIPTION="Find the first file matching a given pattern in the current directory or the nearest ancestor directory."
HOMEPAGE="http://www.npmjs.com/package/findup-sync"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/detect-file-1.0.0
	>=dev-node/is-glob-4.0.3
	>=dev-node/micromatch-4.0.8
	>=dev-node/resolve-dir-1.0.1
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

