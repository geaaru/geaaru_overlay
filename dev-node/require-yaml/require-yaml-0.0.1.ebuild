# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="require('require-yaml') lets you load YAML/YML files using require syntax. For example: var config = require('./config.yaml');"
HOMEPAGE="http://www.npmjs.com/package/require-yaml"

LICENSE="BSD"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/js-yaml-3.14.1
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

