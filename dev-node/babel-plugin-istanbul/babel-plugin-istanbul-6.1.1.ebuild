# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="A babel plugin that adds istanbul instrumentation to ES6 code"
HOMEPAGE="https://github.com/istanbuljs/babel-plugin-istanbul"

LICENSE="BSD-3-Clause"
SLOT="0"
KEYWORDS="*"
IUSE=""
RESTRICT="network-sandbox"

DEPEND="
	>=dev-node/istanbul-lib-instrument-5.2.1
	>=dev-node/test-exclude-6.0.0
"
RDEPEND="${DEPEND}"

NPM_LOCAL_MODULES="
@babel
@istanbuljs
"

S="${WORKDIR}/package"

inherit npmv1

