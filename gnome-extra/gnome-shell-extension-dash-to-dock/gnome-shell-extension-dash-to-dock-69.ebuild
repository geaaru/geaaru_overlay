# Distributed under the terms of the GNU General Public License v2

EAPI=7
inherit gnome3-utils

MY_PN="${PN/gnome-shell-extension-/}"
MY_P="${MY_PN}-extensions.gnome.org-v${PV}"
DESCRIPTION="An icon taskbar for the Gnome Shell"
HOMEPAGE="https://github.com/micheleg/dash-to-dock/"
SRC_URI="https://github.com/micheleg/${MY_PN}/archive/extensions.gnome.org-v${PV}.tar.gz -> ${P}.tar.gz"
#https://github.com/micheleg/dash-to-dock/archive/refs/tags/extensions.gnome.org-v69.tar.gz
LICENSE="GPL-2+"
SLOT="0"
KEYWORDS="amd64"
IUSE=""

COMMON_DEPEND="dev-libs/glib:2"
RDEPEND="${COMMON_DEPEND}
	app-eselect/eselect-gnome-shell-extensions
	>=gnome-base/gnome-shell-3.18.0
"
DEPEND="${COMMON_DEPEND}"
BDEPEND="
	dev-util/intltool
	sys-devel/gettext
"

S="${WORKDIR}/${MY_P}"

src_prepare() {
	default

	# Set correct version
	export VERSION="${PV}"

	# Don't install README and COPYING in unwanted locations
	sed -i -e 's/COPYING//g' -e 's/README.md//g' Makefile || die
}

pkg_preinst() {
	gnome3_schemas_savelist
}

pkg_postinst() {
	gnome3_schemas_update
	ebegin "Updating list of installed extensions"
	eselect gnome-shell-extensions update
	eend $?
}

pkg_postrm() {
	gnome3_schemas_update
}
