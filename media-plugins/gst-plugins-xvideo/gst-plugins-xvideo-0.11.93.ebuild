# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/media-plugins/gst-plugins-xvideo/gst-plugins-xvideo-0.10.35.ebuild,v 1.8 2012/05/17 15:26:29 aballier Exp $

EAPI="3"
GCONF_DEBUG="no"

inherit gst-plugins-base eutils

KEYWORDS="alpha amd64 arm hppa ia64 ~mips ppc ppc64 sh sparc x86 ~amd64-fbsd ~x86-fbsd"
IUSE=""
SRC_URI="http://ftp.gnome.org/pub/gnome/sources/gst-plugins-base/0.11/gst-plugins-base-${PV}.tar.xz"

SLOT="0.11"
RDEPEND="x11-libs/libXv
	x11-libs/libXext"
DEPEND="${RDEPEND}
	x11-proto/videoproto
	x11-proto/xproto
	x11-proto/xextproto"

# xshm is a compile time option of xvideo
# x is needed to build any X plugins, but we build/install only xv anyway
GST_PLUGINS_BUILD="x xvideo xshm"
GST_PLUGINS_BUILD_DIR="xvimage"
