# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

GADMAN_V="gadman03"

EGIT_REPO_URI="git://staff.get-e.org/users/jeffdameth/e.git"
EGIT_BRANCH="ecomorph"
inherit enlightenment git

SRC_URI="gadman? (
http://www.gurumeditation.it/blog/wp-content/uploads/${GADMAN_V}.tgz )"

DESCRIPTION="the e17 window manager"

IUSE="pam dbus gadman"

RDEPEND=">=x11-libs/ecore-9999
	>=media-libs/edje-9999
	>=dev-libs/eet-9999
	>=dev-libs/efreet-9999
	>=dev-libs/embryo-9999
	>=x11-libs/evas-9999
	pam? ( sys-libs/pam )
	dbus? ( x11-libs/e_dbus )"
DEPEND="${RDEPEND}
	x11-proto/xproto
	sys-devel/libtool"

pkg_setup() {
	if ! built_with_use x11-libs/evas png ; then
		eerror "Re-emerge evas with USE=png"
		die "Re-emerge evas with USE=png"
	fi
	enlightenment_pkg_setup
}

src_unpack() {
	git_src_unpack
	if use gadman; then
		cd "${S}/src/modules"
		unpack "${GADMAN_V}.tgz"
		cd "${S}"
		epatch "${FILESDIR}/${GADMAN_V}.patch"
	fi
}


