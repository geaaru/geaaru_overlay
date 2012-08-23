# Copyright 2008 Daniel Gryniewciz
# Distributed under the terms of the GNU General Public License v2

inherit distutils python

DESCRIPTION="Good plugins for the Moovida"
HOMEPAGE="http://www.moovida.com/"
SRC_URI="http://www.moovida.com/media/public/${P}.tar.gz"

RESTRICT="nomirror"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="-* ~amd64 ~ppc ~x86"
IUSE=""

MAKEOPTS="-j1"

RDEPEND="=media-video/moovida-${PV}"


DEPEND="${DEPEND}
	>=dev-util/pkgconfig-0.9"

DOCS=""

src_unpack() {
	unpack ${A}
	cd ${WORKDIR}

	mv elisa-plugins-good-${PV}/ ${PF}
	cd ${S}
}

