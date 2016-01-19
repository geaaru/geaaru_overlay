# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

USE_RUBY="ruby22 ruby23"
PYTHON_REQ_USE=xml
PYTHON_COMPAT=( python{3_2,3_3,3_4} )

inherit cmake-utils eutils python-r1


DESCRIPTION="Openshot Library"
HOMEPAGE="http://www.openshot.org/"
SRC_URI="https://launchpad.net/libopenshot/0.0/${PV}/+download/libopenshot-${PV}.tar.gz"

LICENSE="LGPL-3"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="
	>=media-libs/libopenshot-audio-0.0.6
	dev-lang/swig
	media-gfx/imagemagick
	dev-lang/python
	sys-devel/gcc[openmp(+)]
	dev-qt/qtmultimedia:5[widgets(+)]
	dev-qt/qtwidgets:5
	>=dev-lang/ruby-2.0.0
	dev-cpp/unittest-cpp
"
RDEPEND="${DEPEND}"

pkg_setup() {
	python_setup 'python3*'
#	python_set_active_version 3
#	python_pkg_setup
}

src_unpack() {

	mkdir ${S}
	cd ${S}
	unpack ${A}

}

src_compile() {
	# Force job to 1
	MAKEOPTS="-j1"
	VERBOSE=1

	cmake-utils_src_configure
}

# vim: ts=4 sw=4
