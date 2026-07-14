# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=7

DESCRIPTION="Define multiple non-enumerable properties at once. Uses Object.defineProperty when available; falls back to standard assignment in older engines."
HOMEPAGE="http://www.npmjs.com/package/define-properties"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/define-data-property-1.1.4
	>=dev-node/has-property-descriptors-1.0.2
	>=dev-node/object-keys-1.1.1
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

