# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI="6"

PYTHON_REQ_USE=xml
PYTHON_COMPAT=( python3_{6,7} )
DISTUTILS_SINGLE_IMPL=1

inherit distutils-r1 gnome2-utils versionator xdg-utils

DESCRIPTION="Free, open-source, non-linear video editor to create and edit videos and movies"
HOMEPAGE="http://www.openshotvideo.com"
SRC_URI="https://launchpad.net/${PN}/$(get_version_component_range 1-2)/${PV}/+download/${PN}-qt-${PV}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"

IUSE="+ffmpeg libav +python"
REQUIRED_USE="|| ( python ffmpeg )"

RDEPEND="
	dev-python/PyQt5[svg,webkit,${PYTHON_USEDEP}]
	>=media-libs/libopenshot-0.1.7[python,${PYTHON_USEDEP}]
	dev-python/httplib2[${PYTHON_USEDEP}]
	dev-python/pyzmq[${PYTHON_USEDEP}]
"

DEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
"

S="${WORKDIR}/${PN}-qt-${PV}"

src_unpack() {
	mkdir ${S}
	cd ${S}
	unpack ${A}
}

src_prepare() {
	default
	# prevent setup.py from trying to update MIME databases
	sed -i 's/^ROOT =.*/ROOT = False/' setup.py || die
#	sed -ie '/launcher/,+1d' setup.py || die
#	sed -ie '/FAILED = /,$d' setup.py || die
}

python_install() {
	distutils-r1_python_install

	# Do link to openshot-qt as openstho
	dosym ${EROOT}usr/bin/openshot-qt ${EROOT}usr/bin/openshot
}

pkg_postinst() {
	xdg_desktop_database_update
	xdg_mimeinfo_database_update
	gnome2_icon_cache_update
}

pkg_postrm() {
	xdg_desktop_database_update
	xdg_mimeinfo_database_update
	gnome2_icon_cache_update
}

