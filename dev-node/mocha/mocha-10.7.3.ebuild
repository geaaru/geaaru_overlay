# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="simple, flexible, fun test framework"
HOMEPAGE="https://mochajs.org/"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/ansi-colors-4.1.3
	>=dev-node/browser-stdout-1.3.1
	>=dev-node/chokidar-3.6.0
	>=dev-node/debug-4.3.7
	>=dev-node/diff-5.2.0
	>=dev-node/escape-string-regexp-4.0.0
	>=dev-node/find-up-5.0.0
	>=dev-node/glob-8.1.0
	>=dev-node/he-1.2.0
	>=dev-node/js-yaml-4.1.0
	>=dev-node/log-symbols-4.1.0
	>=dev-node/minimatch-5.1.6
	>=dev-node/ms-2.1.3
	>=dev-node/serialize-javascript-6.0.2
	>=dev-node/strip-json-comments-3.1.1
	>=dev-node/supports-color-8.1.1
	>=dev-node/workerpool-6.5.1
	>=dev-node/yargs-16.2.0
	>=dev-node/yargs-parser-20.2.9
	>=dev-node/yargs-unparser-2.0.0
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

