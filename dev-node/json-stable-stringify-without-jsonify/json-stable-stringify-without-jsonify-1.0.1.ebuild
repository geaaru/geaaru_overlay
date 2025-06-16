# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=7

DESCRIPTION="deterministic JSON.stringify() with custom sorting to get deterministic hashes from stringified results, with no public domain dependencies"
HOMEPAGE="https://github.com/samn/json-stable-stringify"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

