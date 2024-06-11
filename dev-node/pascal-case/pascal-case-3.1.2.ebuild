# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Transform into a string of capitalized words without separators"
HOMEPAGE="https://github.com/blakeembrey/change-case/tree/master/packages/pascal-case"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/no-case-3.0.4
	>=dev-node/tslib-2.6.3
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1
NPM_PKG_DIRS="
dist
"

S="${WORKDIR}/package"

inherit npmv1

