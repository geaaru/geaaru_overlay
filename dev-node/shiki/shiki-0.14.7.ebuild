# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="shiki"
HOMEPAGE="https://github.com/octref/shiki/tree/main/packages/shiki"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/ansi-sequence-parser-1.1.1
	>=dev-node/jsonc-parser-3.3.1
	>=dev-node/vscode-oniguruma-1.7.0
	>=dev-node/vscode-textmate-8.0.0
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

