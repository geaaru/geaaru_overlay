# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Chevrotain is a high performance fault tolerant javascript parsing DSL for building recursive decent parsers"
HOMEPAGE="https://sap.github.io/chevrotain/docs/"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/regexp-to-ast-0.5.0
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

