# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Parse JSON with more helpful errors"
HOMEPAGE="https://github.com/sindresorhus/parse-json"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""
RESTRICT="network-sandbox"

DEPEND="
	>=dev-node/error-ex-1.3.1
	>=dev-node/json-parse-even-better-errors-2.3.1
	>=dev-node/lines-and-columns-1.2.4
"
RDEPEND="${DEPEND}"

NPM_LOCAL_MODULES="
@babel
"

S="${WORKDIR}/package"

inherit npmv1

