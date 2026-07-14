# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=7

DESCRIPTION="JavaScript implementation of the Simple Network Management Protocol (SNMP)"
HOMEPAGE="http://www.npmjs.com/package/net-snmp"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/asn1-ber-1.2.2
	>=dev-node/smart-buffer-4.2.0
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

