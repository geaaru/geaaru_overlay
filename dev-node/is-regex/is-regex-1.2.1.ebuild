# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=7

DESCRIPTION="Is this value a JS regex? Works cross-realm/iframe, and despite ES6 @@toStringTag"
HOMEPAGE="https://github.com/inspect-js/is-regex"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/call-bound-1.0.4
	>=dev-node/gopd-1.2.0
	>=dev-node/has-tostringtag-1.0.2
	>=dev-node/hasown-2.0.4
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

