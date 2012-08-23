# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/sys-cluster/pvfs2/pvfs2-1.5.1.ebuild,v 1.1 2006/07/24 22:06:41 genstef Exp $

inherit linux-mod autotools

MY_PN="${PN%[0-9]*}"
MY_P="${MY_PN}-${PV}"
DESCRIPTION="Parallel Virtual File System version 2"
HOMEPAGE="http://www.pvfs.org/pvfs2/"
SRC_URI="ftp://ftp.parl.clemson.edu/pub/pvfs2/${MY_P}.tar.gz"
IUSE="gtk static doc"
RDEPEND="gtk? ( >=x11-libs/gtk+-2 )
		 sys-libs/db"
DEPEND="${RDEPEND}
		virtual/linux-sources"
SLOT="0"
LICENSE="GPL-2"
KEYWORDS="~ppc ~x86"
S="${WORKDIR}/${MY_P}"

pkg_setup() {
	linux-mod_pkg_setup

	if kernel_is 2 4; then
		BUILD_TARGETS="kmod24 all"
		ECONF_PARAMS="--with-kernel24=${KV_DIR}"
		MODULE_NAMES="pvfs2(fs::src/kernel/linux-2.4)"
	else
		BUILD_TARGETS="kmod all"
		ECONF_PARAMS="--with-kernel=${KV_DIR}"
		MODULE_NAMES="pvfs2(fs::src/kernel/linux-2.6)"
	fi
	ECONF_PARAMS="${ECONF_PARAMS}
		--enable-mmap-racache
		$(use_enable !static shared)
		$(use_enable static)"
	ECONF_PARAMS="${ECONF_PARAMS} $(use_enable gtk karma)"
}

src_unpack() {
	unpack ${A}
	cd "${S}"
	#epatch "${FILESDIR}"/${PN}-1.5.1-destdir.patch
	epatch "${FILESDIR}"/2.6.0-link-librt-properly.patch
	AT_M4DIR="maint/config" eautoreconf
}

src_install() {
	linux-mod_src_install
	if kernel_is 2 4; then
		emake DESTDIR="${D}" kmod_prefix="${D}" kmod24_install || die "install failed"
	else
		emake DESTDIR="${D}" kmod_prefix="${D}" kmod_install || die "install failed"
	fi

	dodoc AUTHORS CREDITS ChangeLog INSTALL README
	docinto examples
	dodoc examples/{fs.conf,pvfs2-server.rc,server.conf-localhost}
	# this is LARGE (~5mb)
	if use doc; then
		docdir="/usr/share/doc/${PF}/"
		cp -pPR ${S}/doc ${D}${docdir}
		rm -rf ${D}${docdir}/man
	fi
}
