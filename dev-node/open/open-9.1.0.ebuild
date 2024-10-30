# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Open stuff like URLs, files, executables. Cross-platform."
HOMEPAGE="http://www.npmjs.com/package/open"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/default-browser-4.0.0
	>=dev-node/define-lazy-prop-3.0.0
	>=dev-node/is-inside-container-1.0.0
	>=dev-node/is-wsl-2.2.0
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

