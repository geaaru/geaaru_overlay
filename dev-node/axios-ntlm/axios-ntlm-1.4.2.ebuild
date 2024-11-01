# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="An NTLM auth extension to the Axios HTTP library"
HOMEPAGE="https://buttes.dev/axios-ntlm/"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/axios-1.7.7
	>=dev-node/des-js-1.1.0
	>=dev-node/dev-null-0.1.1
	>=dev-node/js-md4-0.3.2
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

