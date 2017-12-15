# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

inherit autotools

DESCRIPTION="Cockpit isn't a Node package, these are devel time deps, not needed to build tarball either"
HOMEPAGE="http://www.npmjs.com/package/cockpit"
SRC_URI="https://github.com/${PN}-project/${PN}/releases/download/${PV}/${P}.tar.xz"

SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="sys-auth/polkit:=
	>=dev-libs/glib-2.37.4
	sys-libs/pam:=
	app-crypt/mit-krb5:=
	sys-apps/systemd:=
	dev-util/intltool:=
	net-libs/libssh:=[server]
"
RDEPEND="${DEPEND}"

src_configure () {

	local myconf="--disable-pcp --disable-debug"

	econf ${myconf} || die
}

src_install () {

	emake DESTDIR="${D}" install || die "emake install failed"

	rm -rf ${D}/usr/src || die "error on remove src directory"
}
