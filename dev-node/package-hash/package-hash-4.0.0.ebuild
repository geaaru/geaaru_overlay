# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Generates a hash for an installed npm package, useful for salting caches"
HOMEPAGE="https://github.com/novemberborn/package-hash#readme"

LICENSE="ISC"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/graceful-fs-4.2.11
	>=dev-node/hasha-5.2.2
	>=dev-node/lodash-flattendeep-4.4.0
	>=dev-node/release-zalgo-1.0.0
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

