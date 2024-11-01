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
	dev-node/axios
	dev-node/des-js
	dev-node/dev-null
	dev-node/js-md4
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

