# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/media-plugins/gst-plugins-ogg/gst-plugins-ogg-0.10.35.ebuild,v 1.8 2012/05/17 15:06:51 aballier Exp $

EAPI="3"
GCONF_DEBUG="no"

inherit gst-plugins-base eutils

KEYWORDS="alpha amd64 arm hppa ia64 ~mips ppc ppc64 sh sparc x86 ~amd64-fbsd ~x86-fbsd"
IUSE=""
SRC_URI="http://ftp.gnome.org/pub/gnome/sources/gst-plugins-base/0.11/gst-plugins-base-${PV}.tar.xz"

SLOT="0.11"
RDEPEND=">=media-libs/libogg-1.0"
DEPEND="${RDEPEND}"
