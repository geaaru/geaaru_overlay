# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="smart-buffer is a Buffer wrapper that adds automatic read & write offset tracking, string operations, data insertions, and more."
HOMEPAGE="https://github.com/JoshGlazebrook/smart-buffer/"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

NPM_PKG_DIRS="
	build
"

inherit npmv1

