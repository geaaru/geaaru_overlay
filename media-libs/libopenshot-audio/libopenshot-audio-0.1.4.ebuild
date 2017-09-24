# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

OPENSHOT_PTREE="0.1"
OPENSHOT_TREE="${OPENSHOT_PTREE}.1"

inherit cmake-utils eutils

DESCRIPTION="Openshot Audio Library"
HOMEPAGE="http://www.openshot.org/"
SRC_URI="https://launchpad.net/libopenshot/${OPENSHOT_PTREE}/${OPENSHOT_TREE}/+download/libopenshot-audio-${PV}.tar.gz"

LICENSE="LGPL-3"
SLOT="0"
KEYWORDS="~amd64"
IUSE="doc"

DEPEND="
	media-libs/alsa-lib
	media-libs/freetype
	x11-libs/libX11
	x11-libs/libXcursor
	x11-libs/libXext
	x11-libs/libXinerama
	x11-libs/libXrandr
	x11-libs/libXext
	doc? (
		app-doc/doxygen
	)
"
RDEPEND="${DEPEND}"

# TODO: Check how avoid install of headers files from Juce Project for different
#       libraries.

src_unpack() {

	mkdir ${S}

	cd ${S}
	unpack ${A}

}

src_prepare () {
	# fix under-linking
	# https://github.com/OpenShot/libopenshot-audio/issues/3
	sed -i 's/^\(target_link_libraries(.*\))$/\1 dl pthread)/' \
		src/CMakeLists.txt || die
	cmake-utils_src_prepare
}

src_configure() {
	CMAKE_BUILD_TYPE=None
	local mycmakeargs=(
		-DCMAKE_INSTALL_LIBDIR="${EPREFIX}"/usr/$(get_libdir)
		)
	use doc || mycmakeargs+=( -DDOXYGEN_EXECUTABLE= )

	cmake-utils_src_configure
}


# vim: ts=4 sw=4

