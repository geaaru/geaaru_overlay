# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Extremely powerful dependency injection container."
HOMEPAGE="https://github.com/jeffijoe/awilix"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/camel-case-4.1.2
	>=dev-node/fast-glob-3.3.2
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

