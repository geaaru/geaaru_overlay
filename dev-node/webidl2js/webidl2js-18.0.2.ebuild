# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=7

DESCRIPTION="Auto-generates class structures for WebIDL specifications"
HOMEPAGE="http://www.npmjs.com/package/webidl2js"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/prettier-2.8.8
	>=dev-node/webidl-conversions-7.0.0
	>=dev-node/webidl2-24.4.1
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

