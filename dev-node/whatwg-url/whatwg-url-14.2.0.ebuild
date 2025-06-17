# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=7

DESCRIPTION="An implementation of the WHATWG URL Standard's URL API and parsing machinery"
HOMEPAGE="http://www.npmjs.com/package/whatwg-url"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/tr46-5.1.1
	>=dev-node/webidl-conversions-7.0.0
"
RDEPEND="${DEPEND}"


S="${WORKDIR}/package"

NPM_NO_DEPS=1

inherit npmv1

