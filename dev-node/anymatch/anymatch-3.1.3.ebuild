# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Matches strings against configurable strings, globs, regular expressions, and/or functions"
HOMEPAGE="https://github.com/micromatch/anymatch"

LICENSE="ISC"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/normalize-path-3.0.0
	>=dev-node/picomatch-2.3.1
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

