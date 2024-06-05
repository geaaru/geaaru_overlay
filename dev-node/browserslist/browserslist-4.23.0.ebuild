# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Share target browsers between different front-end tools, like Autoprefixer, Stylelint and babel-env-preset"
HOMEPAGE="https://github.com/browserslist/browserslist"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/caniuse-lite-1.0.30001628
	>=dev-node/electron-to-chromium-1.4.790
	>=dev-node/node-releases-2.0.14
	>=dev-node/update-browserslist-db-1.0.16
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

