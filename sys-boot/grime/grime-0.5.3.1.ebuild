# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit eutils
DESCRIPTION="Grime is a Gtk+ based front-end for configuring the appearence of GRUB's boot menu."
HOMEPAGE="http://grime.sf.net"
#SRC_URI="mirror://sourceforge/${PN}/${P}.tar.bz2"
SRC_URI="http://osdn.dl.sourceforge.net/sourceforge/${PN}/${P}.tar.bz2"
LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""
DEPEND=">=dev-python/pygtk-2.4
	media-gfx/imagemagick"
S=${WORKDIR}/${P}

src_compile() {
	./configure --prefix=/usr --grub-conf=/boot/grub/grub.conf || die
}

src_install() {
	make DESTDIR=${D} install || die
}
