# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Get the default browser"
HOMEPAGE="http://www.npmjs.com/package/default-browser"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/bundle-name-3.0.0
	>=dev-node/default-browser-id-3.0.0
	>=dev-node/execa-7.2.0
	>=dev-node/titleize-3.0.0
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

