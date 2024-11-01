# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="JavaScript build tool, similar to Make or Rake"
HOMEPAGE="http://www.npmjs.com/package/jake"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/async-3.2.6
	>=dev-node/chalk-4.1.2
	>=dev-node/filelist-1.0.4
	>=dev-node/minimatch-3.1.2
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

