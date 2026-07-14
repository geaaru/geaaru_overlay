# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=7

DESCRIPTION="fs-extra contains methods that aren't included in the vanilla Node.js fs package. Such as recursive mkdir, copy, and remove."
HOMEPAGE="https://github.com/jprichardson/node-fs-extra"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/graceful-fs-4.2.11
	>=dev-node/jsonfile-6.2.1
	>=dev-node/universalify-2.0.1
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

