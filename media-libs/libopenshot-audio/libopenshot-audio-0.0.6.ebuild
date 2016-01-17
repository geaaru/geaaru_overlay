# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

OPENSHOT_TREE="0.0.8"

inherit eutils distutils cmake-utils eutils

DESCRIPTION="Openshot Audio Library"
HOMEPAGE="http://www.openshot.org/"
SRC_URI="https://launchpad.net/libopenshot/0.0/${OPENSHOT_TREE}/+download/libopenshot-audio-${PV}.tar.gz"

LICENSE="LGPL-3"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"



src_configure() {
	cmake-utils_src_configure
}

src_compile() {
	cmake-utils_src_compile
}

src_install() {
	cmake-utils_src_install
}

# vim: ts=4 sw=4

