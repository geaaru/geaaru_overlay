# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit distutils

DESCRIPTION="Python bindings for FUSE (Filesystem in Userspace)"
HOMEPAGE="http://fuse.sourceforge.net/"
SRC_URI="http://www.gunnarwrobel.de/downloads/${PF}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~x86"
IUSE=""

DEPEND="sys-fs/fuse"

S=${WORKDIR}/${PN}

src_install() {

	distutils_src_install

	dodoc AUTHORS README ChangeLog xmp.py
}
