# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=7

DESCRIPTION="The semantic version parser used by npm."
HOMEPAGE="http://www.npmjs.com/package/semver"

LICENSE="ISC"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1
NPM_PKG_DIRS="
classes
functions
internal
ranges
"
NPM_BINS="
semver.js => node-semver
"
S="${WORKDIR}/package"

inherit npmv1

