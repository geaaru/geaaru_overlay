# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=7

DESCRIPTION="Get the visual width of a string - the number of columns required to display it"
HOMEPAGE="http://www.npmjs.com/package/string-width"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/eastasianwidth-0.2.0
	>=dev-node/emoji-regex-9.2.2
	>=dev-node/strip-ansi-7.1.0
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

