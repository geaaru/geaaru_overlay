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
	>=dev-node/emoji-regex-10.6.0
	>=dev-node/get-east-asian-width-1.6.0
	>=dev-node/strip-ansi-7.2.0
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

