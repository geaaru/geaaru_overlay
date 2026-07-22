# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=7

DESCRIPTION="Markdown-it - modern pluggable markdown parser."
HOMEPAGE="http://www.npmjs.com/package/markdown-it"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/argparse-2.0.1
	>=dev-node/entities-4.5.0
	>=dev-node/linkify-it-5.0.2
	>=dev-node/mdurl-2.0.0
	>=dev-node/punycode-js-2.3.1
	>=dev-node/uc-micro-2.1.0
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

