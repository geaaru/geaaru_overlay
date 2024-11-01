# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Parser for Github, GitLab and Bitbucket issues actions, references and mentions"
HOMEPAGE="https://github.com/pvdlg/issue-parser#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/lodash-capitalize-4.2.1
	>=dev-node/lodash-escaperegexp-4.1.2
	>=dev-node/lodash-isplainobject-4.0.6
	>=dev-node/lodash-isstring-4.0.1
	>=dev-node/lodash-uniqby-4.7.0
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

