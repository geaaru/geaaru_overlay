# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=7

DESCRIPTION="Determine if a function is a native generator function."
HOMEPAGE="http://www.npmjs.com/package/is-generator-function"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/call-bound-1.0.4
	>=dev-node/generator-function-2.0.1
	>=dev-node/get-proto-1.0.1
	>=dev-node/has-tostringtag-1.0.2
	>=dev-node/safe-regex-test-1.1.0
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

