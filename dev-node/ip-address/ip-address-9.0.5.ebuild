# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="A library for parsing IPv4 and IPv6 IP addresses in node and the browser."
HOMEPAGE="http://www.npmjs.com/package/ip-address"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/jsbn-1.1.0
	>=dev-node/sprintf-js-1.1.3
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

