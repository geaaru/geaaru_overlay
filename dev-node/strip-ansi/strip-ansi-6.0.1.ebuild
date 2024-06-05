# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Strip ANSI escape codes from a string"
HOMEPAGE="https://github.com/chalk/strip-ansi#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/ansi-regex-5.0.1
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

