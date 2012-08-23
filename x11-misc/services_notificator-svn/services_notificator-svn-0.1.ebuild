# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
# Nonofficial ebuild by Ycarus. For new version look here : http://gentoo.zugaina.org/

ESVN_REPO_URI="https://easydbus.svn.sourceforge.net/svnroot/easydbus/examples/services_notificator"

inherit eutils subversion

DESCRIPTION="Services Notificator SVN version"
HOMEPAGE="http://easydbus.sourceforge.net/"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="x86 amd64"
IUSE="debug"

DEPEND="${RDEPEND} 
	>=sys-devel/autoconf-2.59
	>=sys-devel/automake-1.5
	>=sys-apps/dbus-1.0.2
	>=dev-libs/easydbus-svn-0.2"
	

src_compile() {
	local myconf="${myconf} "

	automake --add-missing

	if use debug ; then
		myconf="${myconf} --enable-debug"
	fi

	myconf="${myconf} --prefix=/usr --sysconfdir=/etc"

    econf ${myconf} || die
    emake || die
}

src_install() {
	make install DESTDIR="${D}" || die "install failed"
	dodoc AUTHORS 
}

