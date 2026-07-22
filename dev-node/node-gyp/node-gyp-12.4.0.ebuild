# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=7

DESCRIPTION="Node.js native addon build tool"
HOMEPAGE="http://www.npmjs.com/package/node-gyp"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/env-paths-2.2.1
	>=dev-node/exponential-backoff-3.1.3
	>=dev-node/graceful-fs-4.2.11
	>=dev-node/nopt-9.0.0
	>=dev-node/proc-log-6.1.0
	>=dev-node/semver-7.8.5
	>=dev-node/tar-7.5.20
	>=dev-node/tinyglobby-0.2.17
	>=dev-node/undici-6.27.0
	>=dev-node/which-6.0.1
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

