# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cmake

DESCRIPTION="Library for audio editing and playback used by OpenShot"
HOMEPAGE="https://www.openshot.org/"
SRC_URI="https://github.com/OpenShot/libopenshot-audio/tarball/98f08a6d4a90f3644b6c2c68efb2cbd86c75d87a -> libopenshot-audio-0.3.3-98f08a6.tar.gz"

LICENSE="GPL-3+"
SLOT="0/8"
KEYWORDS="*"

RDEPEND="media-libs/alsa-lib
	media-libs/freetype
	sys-libs/zlib
	x11-libs/libX11
	x11-libs/libXcursor
	x11-libs/libXext
	x11-libs/libXinerama
	x11-libs/libXrandr"
DEPEND="${RDEPEND}"

post_src_unpack() {
	mv OpenShot-${PN}-* "${S}"
}

# vim: filetype=ebuild