# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="jest-message-util nodejs module"
HOMEPAGE="https://github.com/jestjs/jest"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""
RESTRICT="network-sandbox"

DEPEND="
	dev-node/chalk
	>=dev-node/graceful-fs-4.2.11
	>=dev-node/micromatch-4.0.7
	>=dev-node/pretty-format-29.7.0
	>=dev-node/slash-3.0.0
	>=dev-node/stack-utils-2.0.6
"
RDEPEND="${DEPEND}"

NPM_LOCAL_MODULES="
@babel
@jest
@types
"

S="${WORKDIR}/package"

inherit npmv1

