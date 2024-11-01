# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="beautifier.io for node"
HOMEPAGE="https://beautifier.io/"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/config-chain-1.1.13
	>=dev-node/editorconfig-1.0.4
	>=dev-node/glob-10.4.5
	>=dev-node/js-cookie-3.0.5
	>=dev-node/nopt-7.2.1
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

