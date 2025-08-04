# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=7

DESCRIPTION="A simple cron-like task scheduler for Node.js"
HOMEPAGE="https://github.com/merencia/node-cron"

LICENSE="ISC"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/uuid-8.3.2
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1
NPM_PKG_DIRS="
	src
"

S="${WORKDIR}/package"

inherit npmv1

