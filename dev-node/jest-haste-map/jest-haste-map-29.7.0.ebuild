# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="jest-haste-map nodejs module"
HOMEPAGE="https://github.com/jestjs/jest"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""
RESTRICT="network-sandbox"

DEPEND="
	>=dev-node/anymatch-3.1.3
	>=dev-node/fb-watchman-2.0.2
	>=dev-node/graceful-fs-4.2.11
	>=dev-node/jest-regex-util-29.6.3
	>=dev-node/jest-util-29.7.0
	>=dev-node/jest-worker-29.7.0
	>=dev-node/micromatch-4.0.7
	>=dev-node/walker-1.0.8
"
RDEPEND="${DEPEND}"

NPM_LOCAL_MODULES="
@jest
@types
"

S="${WORKDIR}/package"

inherit npmv1

