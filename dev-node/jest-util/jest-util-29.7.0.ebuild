# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="This packages is a collection of utilities and helper functions"
HOMEPAGE="https://github.com/jestjs/jest"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""
RESTRICT="network-sandbox"

DEPEND="
	>=dev-node/chalk-4.1.2
	>=dev-node/ci-info-3.9.0
	>=dev-node/graceful-fs-4.2.11
	>=dev-node/picomatch-2.3.1
"
RDEPEND="${DEPEND}"

NPM_LOCAL_MODULES="
@jest
@types
"

S="${WORKDIR}/package"

inherit npmv1

