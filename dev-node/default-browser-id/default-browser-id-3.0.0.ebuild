# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Get the bundle identifier of the default browser (macOS). Example: com.apple.Safari"
HOMEPAGE="http://www.npmjs.com/package/default-browser-id"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/bplist-parser-0.2.0
	>=dev-node/untildify-4.0.0
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

