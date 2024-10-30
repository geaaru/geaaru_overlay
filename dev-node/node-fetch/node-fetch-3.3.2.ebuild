# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="A light-weight module that brings Fetch API to node.js"
HOMEPAGE="https://github.com/node-fetch/node-fetch"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/data-uri-to-buffer-4.0.1
	>=dev-node/fetch-blob-3.2.0
	>=dev-node/formdata-polyfill-4.0.10
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

