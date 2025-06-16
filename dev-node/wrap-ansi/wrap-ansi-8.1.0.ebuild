# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=7

DESCRIPTION="Wordwrap a string with ANSI escape codes"
HOMEPAGE="http://www.npmjs.com/package/wrap-ansi"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/ansi-styles-6.2.1
	>=dev-node/string-width-5.1.2
	>=dev-node/strip-ansi-7.1.0
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

