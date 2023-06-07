# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="ColReorder for DataTables with styling for [Bootstrap](http://getbootstrap.com/)"
HOMEPAGE="https://datatables.net"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/datatables-net-bs-1.10.15
	>=dev-node/datatables-net-colreorder-1.4.1
	>=dev-node/jquery-3.2.1
"
RDEPEND="${DEPEND}"

NPM_PKG_NAME="datatables.net-colreorder-bs"
NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

