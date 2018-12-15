# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit autotools

DESCRIPTION="Old style template scripts for LXC (prefer distrobuilder)"
HOMEPAGE="https://github.com/lxc/lxc-templates"
SRC_URI="https://github.com/lxc/${PN}/archive/${P}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~arm ~arm64"
IUSE=""

S="${WORKDIR}/${PN}-${P}"

PATCHES=( "${FILESDIR}/${PN}-3.0.1-no-cache-dir.patch" )
DOCS=()

src_prepare() {
	default
	eautoreconf
}
