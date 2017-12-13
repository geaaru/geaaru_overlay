# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="DataTables for jQuery "
HOMEPAGE="https://datatables.net"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/jquery-1.8.3
"
RDEPEND="${DEPEND}"

NPM_PKG_NAME="datatables.net"
NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

