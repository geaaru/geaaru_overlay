# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/app-editors/gedit/gedit-2.12.1.ebuild,v 1.8 2006/02/06 06:10:36 agriffis Exp $
inherit mono

DESCRIPTION="FLAIM is an embeddable cross-platform database engine that provides
a rich, powerful, easy-to-use feature set."
HOMEPAGE="http://forge.novell.com/modules/xfmod/project/?flaim"
SRC_URI="http://forge.novell.com/modules/xfcontent/private.php/flaim/development/flaim/downloads/source/${P}.tar.gz"
LICENSE="GPL-2"
SLOT="0"
KEYWORDS="alpha amd64 ~arm hppa ~ia64 ~mips ppc ppc64 sparc x86"

RDEPEND=""
# FIXME : spell autodetect only

DEPEND="${RDEPEND}"

DOCS="AUTHORS BUGS ChangeLog MAINTAINERS NEWS README THANKS TODO"
USE_DESTDIR="1"

src_compile() {
	make DESTDIR=${D} OSTYPE=`uname -s` HOSTTYPE=`uname -m`
}

src_install() {
	make DESTDIR=${D} install OSTYPE=`uname -s` HOSTTYPE=`uname -m`
}
