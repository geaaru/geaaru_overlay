# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=7

DESCRIPTION="Resolve a directory that is either local, global or in the user's home directory."
HOMEPAGE="https://github.com/jonschlinkert/resolve-dir"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/expand-tilde-2.0.2
	>=dev-node/global-modules-1.0.0
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

