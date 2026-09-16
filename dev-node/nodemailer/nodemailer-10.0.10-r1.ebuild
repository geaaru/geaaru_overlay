# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=7

DESCRIPTION="Easy as cake e-mail sending from your Node.js applications"
HOMEPAGE="https://nodemailer.com/"

LICENSE="MIT-0"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

NPM_PKG_DIRS="
	dist
"

S="${WORKDIR}/package"

inherit npmv1

