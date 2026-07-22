# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=7

DESCRIPTION="Parse the things that can be arguments to npm install"
HOMEPAGE="https://github.com/npm/npm-package-arg"

LICENSE="ISC"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/hosted-git-info-9.0.3
	>=dev-node/proc-log-6.1.0
	>=dev-node/semver-7.8.5
	>=dev-node/validate-npm-package-name-7.0.2
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

