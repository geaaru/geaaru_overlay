# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="An HTML5 VNC client"
HOMEPAGE="https://github.com/kanaka/noVNC"
NPM_GITHUP_MOD="novnc/${PN}"

LICENSE="MPL 2.0"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1
NPM_PKG_DIRS="
include
utils
images
"

inherit npmv1

