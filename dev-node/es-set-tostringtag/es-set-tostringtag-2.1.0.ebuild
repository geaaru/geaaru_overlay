# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=7

DESCRIPTION="A helper to optimistically set Symbol.toStringTag, when possible."
HOMEPAGE="https://github.com/es-shims/es-set-tostringtag#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/es-errors-1.3.0
	>=dev-node/get-intrinsic-1.3.0
	>=dev-node/has-tostringtag-1.0.2
	>=dev-node/hasown-2.0.4
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

