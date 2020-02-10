# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI="6"

PYTHON_COMPAT=( python{2_7,3_6,3_7} )
PYTHON_REQ_USE="threads(+)"
DISTUTILS_SINGLE_IMPL=1

inherit git-r3 distutils-r1 waf-utils

DESCRIPTION="Time tracking for the masses"
HOMEPAGE="http://projecthamster.wordpress.com"
EGIT_REPO_URI="https://github.com/gsobczyk/hamster.git"
LICENSE="GPL-3"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="
	dev-python/gconf-python
	gnome-base/gconf[introspection]
	dev-python/pyxdg
	dev-python/jira[kerberos]
	dev-python/beaker[${PYTHON_USEDEP}]
	dev-python/requests[${PYTHON_USEDEP}]
"
DEPEND="${RDEPEND}
	dev-util/intltool"

src_unpack() {
	git-r3_src_unpack
}

src_prepare() {
	python_fix_shebang .
	distutils-r1_src_prepare
}

src_install() {

	waf-utils_src_install

	dosym /usr/bin/hamster /usr/bin/hamster-service
}
