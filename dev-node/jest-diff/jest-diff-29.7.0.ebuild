# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Display differences clearly so people can review changes confidently."
HOMEPAGE="https://github.com/jestjs/jest"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/chalk-4.1.2
	>=dev-node/diff-sequences-29.6.3
	>=dev-node/jest-get-type-29.6.3
	>=dev-node/pretty-format-29.7.0
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1
