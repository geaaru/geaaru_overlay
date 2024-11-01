# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="HANDLE CONFIGURATION ONCE AND FOR ALL"
HOMEPAGE="http://github.com/dominictarr/config-chain"

LICENSE="{
  type: 'MIT',
  url: 'https://raw.githubusercontent.com/dominictarr/config-chain/master/LICENCE'
}"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/proto-list-1.2.4
	>=dev-node/ini-1.3.4
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

