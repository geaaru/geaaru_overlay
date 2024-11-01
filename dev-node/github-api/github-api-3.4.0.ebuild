# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="A higher-level wrapper around the Github API."
HOMEPAGE="http://www.npmjs.com/package/github-api"

LICENSE="BSD-3-Clause-Clear"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/axios-0.21.4
	>=dev-node/debug-2.2.0
	>=dev-node/js-base64-2.6.4
	>=dev-node/utf8-2.1.2
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

