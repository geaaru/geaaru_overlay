# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=7

DESCRIPTION="Tool for transforming styles with JS plugins"
HOMEPAGE="https://postcss.org/"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/nanoid-3.3.11
	>=dev-node/picocolors-1.1.1
	>=dev-node/source-map-js-1.2.1
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

