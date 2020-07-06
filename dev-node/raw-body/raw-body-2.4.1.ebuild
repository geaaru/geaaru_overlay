# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Get and validate the raw body of a readable stream."
HOMEPAGE="https://github.com/stream-utils/raw-body#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/bytes-3.1.0
	>=dev-node/http-errors-1.7.3
	>=dev-node/iconv-lite-0.4.24
	>=dev-node/unpipe-1.0.0
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

