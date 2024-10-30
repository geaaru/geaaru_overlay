# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Elegant terminal spinner"
HOMEPAGE="http://www.npmjs.com/package/ora"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/chalk-5.3.0
	>=dev-node/cli-cursor-4.0.0
	>=dev-node/cli-spinners-2.9.2
	>=dev-node/is-interactive-2.0.0
	>=dev-node/is-unicode-supported-1.3.0
	>=dev-node/log-symbols-5.1.0
	>=dev-node/stdin-discarder-0.1.0
	>=dev-node/string-width-6.1.0
	>=dev-node/strip-ansi-7.1.0
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

