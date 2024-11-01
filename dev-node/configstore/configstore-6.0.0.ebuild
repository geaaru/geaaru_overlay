# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Easily load and save config without having to think about where and how"
HOMEPAGE="http://www.npmjs.com/package/configstore"

LICENSE="BSD-2-Clause"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/dot-prop-6.0.1
	>=dev-node/graceful-fs-4.2.11
	>=dev-node/unique-string-3.0.0
	>=dev-node/write-file-atomic-3.0.3
	>=dev-node/xdg-basedir-5.1.0
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

