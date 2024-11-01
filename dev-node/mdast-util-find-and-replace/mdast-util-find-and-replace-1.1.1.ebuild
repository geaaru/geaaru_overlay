# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="mdast utility to find and replace text in a tree"
HOMEPAGE="http://www.npmjs.com/package/mdast-util-find-and-replace"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/escape-string-regexp-4.0.0
	>=dev-node/unist-util-is-4.1.0
	>=dev-node/unist-util-visit-parents-3.1.1
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

