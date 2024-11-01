# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Create boxes in the terminal"
HOMEPAGE="http://www.npmjs.com/package/boxen"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/ansi-align-3.0.1
	>=dev-node/camelcase-7.0.1
	>=dev-node/chalk-5.3.0
	>=dev-node/cli-boxes-3.0.0
	>=dev-node/string-width-5.1.2
	>=dev-node/type-fest-2.19.0
	>=dev-node/widest-line-4.0.1
	>=dev-node/wrap-ansi-8.1.0
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

