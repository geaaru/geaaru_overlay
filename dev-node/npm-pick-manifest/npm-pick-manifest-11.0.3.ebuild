# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=7

DESCRIPTION="Resolves a matching manifest from a package metadata document according to standard npm semver resolution rules."
HOMEPAGE="http://www.npmjs.com/package/npm-pick-manifest"

LICENSE="ISC"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/npm-install-checks-8.0.0
	>=dev-node/npm-normalize-package-bin-5.0.0
	>=dev-node/npm-package-arg-13.0.2
	>=dev-node/semver-7.8.5
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

