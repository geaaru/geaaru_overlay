# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="A library to make errors."
HOMEPAGE="https://github.com/daaku/nodejs-makeerror"

LICENSE="BSD-3-Clause"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/tmpl-1.0.5
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

