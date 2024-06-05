# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Get the real length of a string by counting astral symbols and ignoring ansi escape codes"
HOMEPAGE="https://github.com/sindresorhus/string-length#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/char-regex-1.0.2
	>=dev-node/strip-ansi-6.0.1
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

