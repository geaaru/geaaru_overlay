# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=7

DESCRIPTION="test for inclusion or exclusion of paths using globs"
HOMEPAGE="https://istanbul.js.org/"

LICENSE="ISC"
SLOT="0"
KEYWORDS="*"
IUSE=""
RESTRICT="network-sandbox"

DEPEND="
	>=dev-node/glob-10.5.0
	>=dev-node/minimatch-10.2.5
"
RDEPEND="${DEPEND}"

NPM_LOCAL_MODULES="
@istanbuljs
"

S="${WORKDIR}/package"

inherit npmv1

