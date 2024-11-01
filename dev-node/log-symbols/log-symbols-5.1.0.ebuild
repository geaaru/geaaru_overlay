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
	>=dev-node/chalk-5.3.0
	>=dev-node/is-unicode-supported-1.3.0
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

