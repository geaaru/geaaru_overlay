# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=7

DESCRIPTION="JavaScript package downloader"
HOMEPAGE="http://www.npmjs.com/package/pacote"

LICENSE="ISC"
SLOT="0"
KEYWORDS="*"
IUSE=""
RESTRICT="network-sandbox"

DEPEND="
	>=dev-node/cacache-20.0.4
	>=dev-node/fs-minipass-3.0.3
	>=dev-node/minipass-7.1.3
	>=dev-node/npm-package-arg-13.0.2
	>=dev-node/npm-packlist-10.0.4
	>=dev-node/npm-pick-manifest-11.0.3
	>=dev-node/npm-registry-fetch-19.1.1
	>=dev-node/proc-log-6.1.0
	>=dev-node/sigstore-4.1.1
	>=dev-node/ssri-13.0.1
	>=dev-node/tar-7.5.20
"
RDEPEND="${DEPEND}"

NPM_LOCAL_MODULES="
@gar
@npmcli
"

S="${WORKDIR}/package"

inherit npmv1

