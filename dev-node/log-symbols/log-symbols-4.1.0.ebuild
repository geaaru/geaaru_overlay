# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Colored symbols for various log levels. Example: ✔︎ Success"
HOMEPAGE="http://www.npmjs.com/package/log-symbols"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/chalk-4.1.2
	>=dev-node/is-unicode-supported-0.1.0
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

