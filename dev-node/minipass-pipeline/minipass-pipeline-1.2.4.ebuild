# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=7

DESCRIPTION="create a pipeline of streams using Minipass"
HOMEPAGE="http://www.npmjs.com/package/minipass-pipeline"

LICENSE="ISC"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/minipass-3.3.6
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

