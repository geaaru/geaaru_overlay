# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Edit a string with the users preferred text editor using $VISUAL or $ENVIRONMENT"
HOMEPAGE="https://github.com/mrkmg/node-external-editor#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/chardet-0.7.0
	>=dev-node/iconv-lite-0.4.24
	>=dev-node/tmp-0.0.33
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

