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
	>=dev-node/bl-4.1.0
	>=dev-node/chalk-4.1.2
	>=dev-node/cli-cursor-3.1.0
	>=dev-node/cli-spinners-2.9.2
	>=dev-node/is-interactive-1.0.0
	>=dev-node/is-unicode-supported-0.1.0
	>=dev-node/log-symbols-4.1.0
	>=dev-node/strip-ansi-6.0.1
	>=dev-node/wcwidth-1.0.1
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

