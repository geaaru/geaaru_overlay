# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=7

DESCRIPTION="Glob matching for javascript/node.js. A replacement and faster alternative to minimatch and multimatch."
HOMEPAGE="https://github.com/micromatch/micromatch"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/braces-3.0.3
	>=dev-node/picomatch-2.3.1
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

