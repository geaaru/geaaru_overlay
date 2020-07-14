# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="a body parser for koa"
HOMEPAGE="https://github.com/koajs/body-parser"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/co-body-6.0.0
	>=dev-node/copy-to-2.0.1
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1 eutils

src_prepare() {
	npmv1_src_prepare

	epatch "${FILESDIR}"/support_onem2m_ct.patch || die "Error on apply patch"
}
