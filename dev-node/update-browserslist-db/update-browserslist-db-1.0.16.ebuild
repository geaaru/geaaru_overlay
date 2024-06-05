# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="CLI tool to update caniuse-lite to refresh target browsers from Browserslist cfg"
HOMEPAGE="https://github.com/browserslist/update-db#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/escalade-3.1.2
	>=dev-node/picocolors-1.0.1
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

