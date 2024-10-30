# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Xml digital signature and encryption library for Node.js"
HOMEPAGE="http://www.npmjs.com/package/xml-crypto"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""
RESTRICT="network-sandbox"

DEPEND="
	>=dev-node/xpath-0.0.33
"
RDEPEND="${DEPEND}"

NPM_LOCAL_MODULES="
@xmldom
"

S="${WORKDIR}/package"

inherit npmv1

