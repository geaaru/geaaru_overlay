# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Get metadata of a package from the npm registry"
HOMEPAGE="http://www.npmjs.com/package/package-json"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/got-12.6.1
	>=dev-node/registry-auth-token-5.0.2
	>=dev-node/registry-url-6.0.1
	>=dev-node/semver-7.6.3
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

