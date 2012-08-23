# Copyright 2006 BreakMyGentoo.org
# Distributed under the terms of the GNU General Public License v2

inherit distutils python

DESCRIPTION="PyZeroconf."
HOMEPAGE="http://www.sourceforge.net/projects/pyzeroconf"
SRC_URI=" http://downloads.sourceforge.net/pyzeroconf/${P}.tgz"

KEYWORDS="-* ~x86 ~amd64 ~ppc"
SLOT="0"
LICENSE="GPL-2"
IUSE=""

DEPEND="virtual/python"

src_unpack () {
	unpack ${A}
	cp ${FILESDIR}/setup.py ${WORKDIR}/${P}
}

