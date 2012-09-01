# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/media-libs/clutter-gst/clutter-gst-1.6.0.ebuild,v 1.1 2012/07/03 07:30:49 tetromino Exp $

EAPI="4"
GCONF_DEBUG="yes"
CLUTTER_LA_PUNT="yes"

# inherit clutter after gnome2 so that defaults aren't overriden
# inherit gnome.org in the end so we use gnome mirrors and get the xz tarball
# no PYTHON_DEPEND, python2 is just a build-time dependency
inherit python gnome2 clutter gnome.org

DESCRIPTION="GStreamer Integration library for Clutter"

SLOT="1.0"
KEYWORDS="~alpha ~amd64 ~x86"
IUSE="doc examples +introspection"

# FIXME: Support for gstreamer-basevideo-0.10 (HW decoder support) is automagic
RDEPEND="
	>=dev-libs/glib-2.20:2
	>=media-libs/clutter-1.11.12:1.0[introspection?]
	>=media-libs/cogl-1.11.2:1.0[introspection?]
	>=media-libs/gstreamer-0.11.0:0.11[introspection?]
	>=media-libs/gst-plugins-good-0.11.93
	introspection? ( >=dev-libs/gobject-introspection-1.33.2 )"
DEPEND="${RDEPEND}
	=dev-lang/python-2*
	virtual/pkgconfig
	doc? ( >=dev-util/gtk-doc-1.8 )"
# eautoreconf does *not* need gtk-doc-am, see build/autotools/ directory

pkg_setup() {
	DOCS="AUTHORS NEWS README"
	EXAMPLES="examples/{*.c,*.png,README}"
	G2CONF="${G2CONF}
		--disable-maintainer-flags
		$(use_enable introspection)"

	python_set_active_version 2
	python_pkg_setup
}

src_prepare() {
	# bug #401383, https://bugzilla.gnome.org/show_bug.cgi?id=669054
	# FIXME: is this still needed? I don't think so, but not sure. ~nirbheek
	#eautoreconf
	epatch "${FILESDIR}/${P}-gl-include.patch"

	gnome2_src_prepare
}

src_compile() {
	# Clutter tries to access dri without userpriv, upstream bug #661873
	# Massive failure of a hack, see bug 360219, bug 360073, bug 363917
	DISPLAY="999invalid" emake
}
