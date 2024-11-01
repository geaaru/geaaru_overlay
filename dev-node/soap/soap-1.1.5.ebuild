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
	dev-node/debug
	dev-node/formidable
	dev-node/get-stream
	dev-node/lodash
	dev-node/sax
	dev-node/strip-bom
	dev-node/whatwg-mimetype
	dev-node/xml-crypto
"
RDEPEND="${DEPEND}"


S="${WORKDIR}/package"

inherit npmv1

