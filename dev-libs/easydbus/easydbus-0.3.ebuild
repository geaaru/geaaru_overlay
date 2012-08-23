# Copyright 2000-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Nonofficial ebuild by Ge@@ru.
# $Header: easydbus-svn.ebuild, v. 0.3 2008/07/05 16:09:00 $

inherit eutils

DESCRIPTION="EasyDbus Library"
HOMEPAGE="http://easydbus.sourceforge.net/"
SRC_URI="http://downloads.sourceforge.net/easydbus/${PF}.tar.gz"
LICENSE="GPL-2"
SLOT="0"
KEYWORDS="x86 amd64"
IUSE="debug doxygen"

RDEPEND="doxygen? ( app-doc/doxygen )"

DEPEND="${RDEPEND}
	>=sys-devel/autoconf-2.59
	>=sys-devel/automake-1.5
	>=sys-apps/dbus-1.0.2"

src_compile() {
	local myconf="${myconf} "

	automake --add-missing

	if use debug ; then
		myconf="${myconf} --enable-debug"
	fi

	if use doxygen ; then
		myconf="${myconf} --enable-doxygen-html --enable-doxygen-pdf"
	fi

	myconf="${myconf} --prefix=/usr"

	econf ${myconf} || die
	emake || die
}

src_install() {
	make install DESTDIR="${D}" || die "install failed"
	dodoc AUTHORS
}

