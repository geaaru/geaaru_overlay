# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="It's a very fast and efficient glob library for Node.js"
HOMEPAGE="https://github.com/mrmlnc/fast-glob#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""
RESTRICT="network-sandbox"

DEPEND="
	>=dev-node/glob-parent-5.1.2
	>=dev-node/merge2-1.4.1
	>=dev-node/micromatch-4.0.7
"
RDEPEND="${DEPEND}"

NPM_LOCAL_MODULES="
@nodelib
"

S="${WORKDIR}/package"

inherit npmv1

