# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Get the visual width of a string - the number of columns required to display it"
HOMEPAGE="https://github.com/sindresorhus/string-width#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/emoji-regex-8.0.0
	>=dev-node/is-fullwidth-code-point-3.0.0
	>=dev-node/strip-ansi-6.0.1
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

