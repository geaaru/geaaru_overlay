# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Interface for parsing, inspecting, transforming, and serializing content through syntax trees"
HOMEPAGE="https://unifiedjs.com"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/bail-1.0.5
	>=dev-node/extend-3.0.2
	>=dev-node/is-buffer-2.0.3
	>=dev-node/is-plain-obj-2.1.0
	>=dev-node/trough-1.0.5
	>=dev-node/vfile-4.2.1
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

