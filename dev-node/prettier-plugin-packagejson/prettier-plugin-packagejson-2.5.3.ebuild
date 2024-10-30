# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Prettier package.json plugin to make the order of properties nice."
HOMEPAGE="http://www.npmjs.com/package/prettier-plugin-packagejson"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/sort-package-json-2.10.1
	>=dev-node/synckit-0.9.2
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

