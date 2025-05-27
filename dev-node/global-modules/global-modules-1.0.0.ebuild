# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=7

DESCRIPTION="The directory used by npm for globally installed npm modules."
HOMEPAGE="https://github.com/jonschlinkert/global-modules"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/global-prefix-1.0.2
	>=dev-node/is-windows-1.0.2
	>=dev-node/resolve-dir-1.0.1
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

