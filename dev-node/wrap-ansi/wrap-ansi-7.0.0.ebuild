# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Wordwrap a string with ANSI escape codes"
HOMEPAGE="https://github.com/chalk/wrap-ansi#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	dev-node/ansi-styles
	>=dev-node/string-width-4.2.3
	>=dev-node/strip-ansi-6.0.1
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

