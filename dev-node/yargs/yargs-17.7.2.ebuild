# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="yargs the modern, pirate-themed, successor to optimist."
HOMEPAGE="https://yargs.js.org/"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/cliui-8.0.1
	>=dev-node/escalade-3.1.2
	>=dev-node/get-caller-file-2.0.5
	>=dev-node/require-directory-2.1.1
	>=dev-node/string-width-4.2.3
	>=dev-node/y18n-5.0.8
	>=dev-node/yargs-parser-21.1.1
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

