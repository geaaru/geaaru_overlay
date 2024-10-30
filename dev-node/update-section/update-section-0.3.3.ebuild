# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Updates a section inside a file with newer content while removing the old content."
HOMEPAGE="https://github.com/thlorenz/update-section"

LICENSE="{
  type: 'MIT',
  url: 'https://github.com/thlorenz/update-section/blob/master/LICENSE'
}"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

