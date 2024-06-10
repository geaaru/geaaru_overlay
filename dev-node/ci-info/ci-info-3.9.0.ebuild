# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Get details about the current Continuous Integration environment"
HOMEPAGE="https://github.com/watson/ci-info"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1
NPM_PKG_DIRS="
	vendors.json
"

S="${WORKDIR}/package"

inherit npmv1

