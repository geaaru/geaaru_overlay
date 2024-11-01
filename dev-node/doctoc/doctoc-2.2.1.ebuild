# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Generates TOC for markdown files of local git repo."
HOMEPAGE="http://www.npmjs.com/package/doctoc"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""
RESTRICT="network-sandbox"

DEPEND="
	>=dev-node/anchor-markdown-header-0.6.0
	>=dev-node/htmlparser2-7.2.0
	>=dev-node/minimist-1.2.8
	>=dev-node/underscore-1.13.4
	>=dev-node/update-section-0.3.3
"
RDEPEND="${DEPEND}"

NPM_LOCAL_MODULES="
@textlint
"

S="${WORKDIR}/package"

inherit npmv1

