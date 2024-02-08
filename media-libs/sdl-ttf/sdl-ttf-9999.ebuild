# Copyright 2000-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Nonofficial ebuild by Ge@@ru.
# $Header$

ESVN_REPO_URI="http://svn.libsdl.org/trunk/SDL_ttf"

inherit eutils subversion
inherit flag-o-matic toolchain-funcs eutils libtool

DESCRIPTION="Simple Direct Media Layer"
HOMEPAGE="http://www.libsdl.org/"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="*"
IUSE="X"

DEPEND="X? ( x11-libs/libXt )
	media-libs/libsdl
	>=media-libs/freetype-2.3"

S=${WORKDIR}/sdl-ttf-9999/SDL_ttf

src_compile() {
	./autogen.sh

	econf \
		$(use_with X x) || die "econf failed"

	emake || die
}

src_install() {
	emake DESTDIR="${D}" install || die "emake install failed"
	dodoc README CHANGES
}

