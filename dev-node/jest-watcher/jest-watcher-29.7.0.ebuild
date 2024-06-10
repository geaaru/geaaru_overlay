# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Delightful JavaScript Testing."
HOMEPAGE="https://jestjs.io/"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""
RESTRICT="network-sandbox"

DEPEND="
	>=dev-node/ansi-escapes-4.3.2
	>=dev-node/chalk-4.1.2
	>=dev-node/emittery-0.13.1
	>=dev-node/jest-util-29.7.0
	>=dev-node/string-length-4.0.2
"
RDEPEND="${DEPEND}"

NPM_LOCAL_MODULES="
@jest
@types
"
NPM_PKG_DIRS="
build
"
S="${WORKDIR}/package"

inherit npmv1

