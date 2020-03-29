# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI="6"

PYTHON_REQ_USE=xml
PYTHON_COMPAT=( python3_{6,7} )
DISTUTILS_SINGLE_IMPL=1

inherit distutils-r1 gnome2-utils versionator xdg-utils

MY_PN="${PN}-qt"

DESCRIPTION="Free, open-source, non-linear video editor to create and edit videos and movies"
HOMEPAGE="http://www.openshotvideo.com"
SRC_URI="https://github.com/OpenShot/${MY_PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"
IUSE="doc"

RDEPEND="
	$(python_gen_cond_dep '
		dev-python/httplib2[${PYTHON_MULTI_USEDEP}]
		dev-python/PyQt5[${PYTHON_MULTI_USEDEP},gui,svg,webkit,widgets]
		dev-python/pyzmq[${PYTHON_MULTI_USEDEP}]
		dev-python/requests[${PYTHON_MULTI_USEDEP}]
	')
"

BDEPEND="
	$(python_gen_cond_dep '
		doc? ( dev-python/sphinx[${PYTHON_MULTI_USEDEP}] )
	')
"

S="${WORKDIR}/${MY_PN}-${PV}"

src_prepare() {
	distutils-r1_python_prepare_all
	# prevent setup.py from trying to update MIME databases
	sed -i 's/^ROOT =.*/ROOT = False/' setup.py || die
}

python_compile_all() {
	use doc && emake -C doc html
}

python_install_all() {
	use doc && local HTML_DOCS=( doc/_build/html/. )
	distutils-r1_python_install_all

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

