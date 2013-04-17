# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"
GCONF_DEBUG="no"
VALA_MIN_API_VERSION=0.20
VALA_USE_DEPEND=vapigen


inherit gnome2 vala
if [[ ${PV} = 9999 ]]; then
	inherit gnome2-live
fi

DESCRIPTION="A calculator application for GNOME"
HOMEPAGE="http://live.gnome.org/Gcalctool http://calctool.sourceforge.net/"

LICENSE="GPL-2"
SLOT="0"
IUSE="vala"
if [[ ${PV} = 9999 ]]; then
	KEYWORDS=""
else
	KEYWORDS="~alpha ~amd64 ~arm ~ia64 ~ppc ~ppc64 ~sh ~sparc ~x86 ~x86-fbsd ~x86-freebsd ~amd64-linux ~x86-linux"
fi

COMMON_DEPEND=">=x11-libs/gtk+-3:3
	>=dev-libs/glib-2.31:2
	dev-libs/libxml2:2"
RDEPEND="${COMMON_DEPEND}
	!<gnome-extra/gnome-utils-2.3"
DEPEND="${COMMON_DEPEND}
	>=dev-util/intltool-0.35
	sys-devel/gettext
	virtual/pkgconfig
	vala? ( $(vala_depend) )"

if [[ ${PV} = 9999 ]]; then
	DEPEND="${DEPEND}
		app-text/yelp-tools"
fi

src_prepare() {
	DOCS="NEWS"
	G2CONF="${G2CONF}
		--disable-schemas-compile"

	[[ ${PV} != 9999 ]] && G2CONF="${G2CONF} ITSTOOL=$(type -P true)"

	use vala && vala_src_prepare
	gnome2_src_prepare
}


