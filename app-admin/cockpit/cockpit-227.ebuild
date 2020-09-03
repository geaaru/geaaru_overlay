# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

inherit autotools

DESCRIPTION="Cockpit is a server manager that makes it easy to administer"
HOMEPAGE="http://cockpit-project.org/"
SRC_URI="https://github.com/${PN}-project/${PN}/releases/download/${PV}/${P}.tar.xz"

SLOT="0"
KEYWORDS="~amd64 ~arm ~arm64"
IUSE="systemd doc  openrc"

DEPEND="sys-auth/polkit:=
	>=dev-libs/glib-2.37.4
	sys-libs/pam:=
	app-crypt/mit-krb5:=
  systemd? ( sys-apps/systemd:= ) ( !sys-apps/openrc:=)
	openrc? ( app-admin/openrc-settingsd:=) ( !sys-apps/systemd:= )
	sys-devel/gettext
  dev-util/intltool:=
	net-libs/libssh:=[server]
"
RDEPEND="${DEPEND}"
#app-admin/openrc-settingsd openrc systemd unit runner [-systemd] 
## at worst https://github.com/goose121/initify 
src_configure () {

	local myconf="--disable-pcp --disable-debug"
	if ! use doc ; then
		myconf="${myconf} --disable-doc"
	fi

	econf ${myconf} || die
}

src_install () {

	emake DESTDIR="${D}" install || die "emake install failed"

	rm -rf ${D}/usr/src || die "error on remove src directory"
}
