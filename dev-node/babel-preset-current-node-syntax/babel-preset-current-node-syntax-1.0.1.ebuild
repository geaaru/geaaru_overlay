# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="A Babel preset that enables parsing of proposals supported by the current Node.js version."
HOMEPAGE="https://github.com/nicolo-ribaudo/babel-preset-current-node-syntax"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""
RESTRICT="network-sandbox"

DEPEND="
"
RDEPEND="${DEPEND}"

NPM_LOCAL_MODULES="
@babel
"

S="${WORKDIR}/package"

inherit npmv1

