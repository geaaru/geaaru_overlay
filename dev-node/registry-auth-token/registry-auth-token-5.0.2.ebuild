# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Get the auth token set for an npm registry (if any)"
HOMEPAGE="https://github.com/rexxars/registry-auth-token#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""
RESTRICT="network-sandbox"

DEPEND="
"
RDEPEND="${DEPEND}"

NPM_LOCAL_MODULES="
@pnpm
"

S="${WORKDIR}/package"

inherit npmv1

