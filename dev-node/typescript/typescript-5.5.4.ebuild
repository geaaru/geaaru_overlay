# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="TypeScript is a language for application scale JavaScript development"
HOMEPAGE="https://www.typescriptlang.org/"
LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="*"
IUSE=""

RDEPEND="${DEPEND}"

NPM_NO_DEPS=1
S="${WORKDIR}/package"

inherit npmv1
