# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="A minimal node SOAP client"
HOMEPAGE="http://www.npmjs.com/package/soap"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	dev-node/axios
	dev-node/axios-ntlm
	>=dev-node/debug-4.3.7
	>=dev-node/formidable-3.5.1
	>=dev-node/get-stream-6.0.1
	>=dev-node/lodash-4.17.21
	>=dev-node/sax-1.4.1
	>=dev-node/strip-bom-3.0.0
	>=dev-node/whatwg-mimetype-4.0.0
	>=dev-node/xml-crypto-6.0.0
"
RDEPEND="${DEPEND}"


S="${WORKDIR}/package"

inherit npmv1

