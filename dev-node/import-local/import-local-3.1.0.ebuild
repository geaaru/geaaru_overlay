# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Let a globally installed package use a locally installed version of itself if available"
HOMEPAGE="https://github.com/sindresorhus/import-local#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/pkg-dir-4.2.0
	>=dev-node/resolve-cwd-3.0.0
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

