# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=7

DESCRIPTION="The Pug loader is responsible for loading the depenendencies of a given Pug file."
HOMEPAGE="http://www.npmjs.com/package/pug-load"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/object-assign-4.1.1
	>=dev-node/pug-walk-2.0.0
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

