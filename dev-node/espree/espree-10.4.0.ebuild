# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=7

DESCRIPTION="An Esprima-compatible JavaScript parser built on Acorn"
HOMEPAGE="https://github.com/eslint/js/blob/main/packages/espree/README.md"

LICENSE="BSD-2-Clause"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/acorn-8.15.0
	>=dev-node/acorn-jsx-5.3.2
	>=dev-node/eslint-visitor-keys-4.2.1
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

