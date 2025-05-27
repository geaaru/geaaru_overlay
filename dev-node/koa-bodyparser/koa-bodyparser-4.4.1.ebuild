# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=7

DESCRIPTION="a body parser for Koa"
HOMEPAGE="https://github.com/koajs/body-parser"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/co-body-6.2.0
	>=dev-node/copy-to-2.0.1
	>=dev-node/type-is-1.6.18
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1 eutils

src_prepare() {
	npmv1_src_prepare

	epatch "${FILESDIR}"/support_onem2m_ct.patch || die "Error on apply patch"
}

