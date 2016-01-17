# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

PYTHON_REQ_USE=xml
PYTHON_COMPAT=( python{3_2,3_3,3_4} )
DESCRIPTION="Openshot Library"
HOMEPAGE="http://www.openshot.org/"
#SRC_URI=""


LIVE_ECLASS="bzr"
EBZR_REPO_URI="lp:libopenshot"

LICENSE="LGPL-3"
SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

inherit eutils ${LIVE_ECLASS} distutils cmake-utils eutils python
unset LIVE_ECLASS


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
