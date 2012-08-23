# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
# Nonofficial ebuild by Ycarus. For new version look here : http://gentoo.zugaina.org/

ESVN_REPO_URI="https://tapioca-voip.svn.sourceforge.net/svnroot/tapioca-voip/libjingle/trunk"

inherit eutils subversion

DESCRIPTION="Tapioca modified Libjingle"
HOMEPAGE="http://tapioca-voip.sourceforge.net/"

LICENSE="GPL-2"
KEYWORDS="x86 amd64"
IUSE=""


DEPEND=">=sys-devel/autoconf-2.59
	>=sys-devel/automake-1.5"
	
src_compile() {
    autoreconf -i -f
    econf || die
    emake || die
}

src_install() {
	make install DESTDIR="${D}" || die "install failed"
	dodoc AUTHORS ChangeLog NEWS README
}

