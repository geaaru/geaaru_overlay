# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=7

DESCRIPTION="easily create complex multi-column command-line-interfaces"
HOMEPAGE="http://www.npmjs.com/package/cliui"

LICENSE="ISC"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/string-width-4.2.3
	>=dev-node/strip-ansi-6.0.1
	>=dev-node/wrap-ansi-7.0.0
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

