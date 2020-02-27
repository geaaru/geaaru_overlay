# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python{3_6,3_7} )
PYTHON_REQ_USE="threads(+)"
DISTUTILS_SINGLE_IMPL=1

inherit git-r3 distutils-r1 waf-utils xdg-utils gnome2-utils

DESCRIPTION="Time tracking for the masses"
HOMEPAGE="http://projecthamster.wordpress.com"
EGIT_REPO_URI="https://github.com/projecthamster/hamster.git"
EGIT_COMMIT="v${PV}"
LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

RDEPEND="
	dev-python/gconf-python
	gnome-base/gconf[introspection]
	dev-python/pyxdg
	$(python_gen_cond_dep '
		dev-python/beaker[${PYTHON_MULTI_USEDEP}]
		dev-python/requests[${PYTHON_MULTI_USEDEP}]
	')
"
DEPEND="${RDEPEND}
	dev-util/intltool"

src_unpack() {
	git-r3_src_unpack
}

src_prepare() {
	# Fix python2 legacy
	sed -i -e 's:python2:python:g' po/wscript || die "Error on fix wscript"
	sed -i -e 's:python2:python:g' setup.py || die "Error on fix setup.py"
	# Disable update of the icon cache. I will do it directly.
	sed -i -e 's:bld.add_post_fun:#bld.add_post_fun:g' wscript || die "Error on block update of the icons cache"
	python_fix_shebang .
	distutils-r1_src_prepare
}

src_configure() {
	local mywafconfargs=(
		--prefix=/usr
		--datadir=/usr/share
	)
	waf-utils_src_configure ${mywafconfargs[@]}
}

src_install() {
	waf-utils_src_install
	dosym /usr/bin/hamster /usr/bin/hamster-service

	rm -rf ${D}/usr/share/glib-2.0/schemas/gschemas.compiled || die "Error on remove glib-2.0 schemas"
	# glib-compile-schemas /usr/share/glib-2.0/schemas
}

pkg_postinst() {
	xdg_icon_cache_update
	gnome2_schema_update
}

pkg_postrm() {
	xdg_icon_cache_update
	gnome2_schema_update
}
