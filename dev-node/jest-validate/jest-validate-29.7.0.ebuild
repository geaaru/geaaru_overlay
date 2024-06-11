# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Generic configuration validation tool that helps you with warnings, errors and deprecation messages as well as showing users examples of correct configuration."
HOMEPAGE="https://github.com/jestjs/jest#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""
RESTRICT="network-sandbox"

DEPEND="
	>=dev-node/camelcase-6.3.0
	dev-node/chalk
	>=dev-node/jest-get-type-29.6.3
	>=dev-node/leven-3.1.0
	>=dev-node/pretty-format-29.7.0
"
RDEPEND="${DEPEND}"

NPM_LOCAL_MODULES="
@jest
"

S="${WORKDIR}/package"

inherit npmv1

