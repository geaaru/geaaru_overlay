# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=7

MY_V=${PV/_rc/-rc}

DESCRIPTION="A library to create readable 'multipart/form-data' streams. Can be used to submit forms and file uploads to other web applications."
HOMEPAGE="http://www.npmjs.com/package/form-data"
SRC_URI="http://registry.npmjs.org/${PN}/-/${PN}-${MY_V}.tgz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/asynckit-0.4.0
	>=dev-node/combined-stream-1.0.8
	>=dev-node/es-set-tostringtag-2.1.0
	>=dev-node/hasown-2.0.4
	>=dev-node/mime-types-2.1.35
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

