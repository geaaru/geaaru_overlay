# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=7

DESCRIPTION="A terminal based horizontal guage"
HOMEPAGE="https://github.com/npm/gauge"

LICENSE="ISC"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/aproba-1.2.0
	>=dev-node/color-support-1.1.3
	>=dev-node/console-control-strings-1.1.0
	>=dev-node/has-unicode-2.0.1
	>=dev-node/object-assign-4.1.1
	>=dev-node/signal-exit-3.0.7
	>=dev-node/string-width-4.2.3
	>=dev-node/strip-ansi-6.0.1
	>=dev-node/wide-align-1.1.5
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

