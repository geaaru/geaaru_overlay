# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EGIT_BRANCH="ecomorph"
EGIT_PROJECT="ecomorph"
EGIT_BOOTSTRAP="NOCONFIGURE=1 ./autogen.sh"
EGIT_REPO_URI="git://staff.get-e.org/users/jeffdameth/compiz.git"
inherit git

DESCRIPTION="Compiz for E17 hack"
HOMEPAGE="http://code.google.com/p/itask-module/wiki/Stuff"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS=""
IUSE="fuse e-keybindings"

RDEPEND="=x11-wm/e-9999-r1
	gnome-base/librsvg
	media-libs/libpng
	sys-apps/dbus
	dev-libs/libxslt
	x11-libs/pango
	x11-libs/cairo
	virtual/opengl
	fuse? ( sys-fs/fuse )"
DEPEND="${RDEPEND}"
#	!x11-libs/compiz-bcop
#	!x11-wm/compiz"

src_unpack() {
	git_src_unpack
	cd "${S}"
	if use e-keybindings; then
		sed -i -e 's@#define KEYBINDING 1@/* #define KEYBINDING 1 */@' \
			include/ecomp.h || die "bad sed"
	fi
}

src_install() {
	make DESTDIR="${D}" install || die

	# create a X session file
	exeinto /etc/X11/Sessions
	newexe "${FILESDIR}/${PN}.session" "${PN}"
	insinto /usr/share/xsessions
	doins "${FILESDIR}/${PN}.desktop"

	# temp hacks - this breaks emerald :(
	rm -f "${D}"/usr/lib*/libdecoration.*
	rm -f "${D}"/usr/bin/bcop "${D}"/usr/share/bcop/bcop.xslt
	rm -f "${D}"/usr/lib*/pkgconfig/libdecoration.pc
	rm -f "${D}"/usr/share/pkgconfig/bcop.pc

	dodoc ecomp/ecompconfig/*.ini
}

pkg_postinst() {
	elog "If this is your first install, run:"
	echo
	elog "mkdir -p ~/.config/ecomp/ecompconfig"
	elog "bzcat /usr/share/doc/${P}/Default.ini.bz2 > ~/.config/ecomp/ecompconfig/Default.ini"
	echo
	elog "ATI and Intel gfx card users please edit /etc/X11/Sessions/ecomorph"
	echo
}
