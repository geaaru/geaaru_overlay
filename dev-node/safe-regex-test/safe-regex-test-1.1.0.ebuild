# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=7

DESCRIPTION="Give a regex, get a robust predicate function that tests it against a string."
HOMEPAGE="https://github.com/ljharb/safe-regex-test#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/call-bound-1.0.4
	>=dev-node/es-errors-1.3.0
	>=dev-node/is-regex-1.2.1
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

