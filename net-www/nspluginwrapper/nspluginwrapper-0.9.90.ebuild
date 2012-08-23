# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
# This ebuild come from http://dev.gentoo.org/~herbs/nspluginwrapper/ - The site http://gentoo.zugaina.org/ only host a copy.
# Small modifications by Ycarus

inherit multilib rpm nsplugins eutils flag-o-matic

DESCRIPTION="Netscape Plugin Wrapper - Load 32bit plugins on 64bit browser"
HOMEPAGE="http://www.gibix.net/dokuwiki/en:projects:nspluginwrapper"
SRC_URI="http://www.gibix.net/projects/nspluginwrapper/files/${P}-1.x86_64.rpm
	http://www.gibix.net/projects/nspluginwrapper/files/${PN}-i386-${PV}-1.x86_64.rpm
	http://www.gibix.net/projects/nspluginwrapper/files/${PN}-gpl-${PV}.tar.bz2"

LICENSE="Other"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

RDEPEND="=dev-libs/glib-2*
	=x11-libs/gtk+-2*
	app-emulation/emul-linux-x86-gtklibs
	|| ( sys-apps/linux32 app-emulation/qemu )"
DEPEND="${RDEPEND}
	dev-util/pkgconfig"

# Strange file locations do not play nice with multilib-strict
# but shouldn't cause any problems either.
MULTILIB_STRICT_EXEMPT="${PN}"

src_unpack() {
	rpm_src_unpack
	cd ${S}
	epatch ${FILESDIR}/${P}-gentoo-plugdir.patch
}

src_compile() {
	append-flags -std=c99
	./configure \
		--prefix=/usr \
		--with-lib=$(get_libdir) \
		--with-cc=$(tc-getCC) \
		--target-cpu=i386 \
		|| die "configure failed!"
	emake || die "emake failed!"
}

src_install() {
	INSTDIR="/usr/lib/${PN}"

	dodir ${INSTDIR}
	exeinto ${INSTDIR}
	doexe ${S}/npviewer

	dodir ${INSTDIR}/x86_64
	exeinto ${INSTDIR}/x86_64
	doexe ${WORKDIR}/usr/lib/${PN}/x86_64/{npviewer.bin,npwrapper.so}
	doexe ${S}/npconfig

	dodir ${INSTDIR}/i386
	exeinto ${INSTDIR}/i386
	doexe ${WORKDIR}/usr/lib/${PN}/i386/npviewer.bin

	inst_plugin ${INSTDIR}/x86_64/npwrapper.so

	dodir /usr/bin
	dosym ${INSTDIR}/x86_64/npconfig /usr/bin/nspluginwrapper

	dodoc COPYING LICENSE NEWS README
}

pkg_postinst() {
	einfo "Auto installing 32bit plugins"
	nspluginwrapper -v -a -i
	einfo "Any 32bit plugins you currently have installed have now been"
	einfo "configured to work in a 64bit browser. Any plugins you install in"
	einfo "the future will first need to be setup with:"
	einfo "  \"nspluginwrapper -i <path-to-32bit-plugin>\""
	einfo "before they will function in a 64bit browser"
}

pkg_prerm() {
	einfo "Removing wrapper plugins"
	nspluginwrapper -v -a -r
}
