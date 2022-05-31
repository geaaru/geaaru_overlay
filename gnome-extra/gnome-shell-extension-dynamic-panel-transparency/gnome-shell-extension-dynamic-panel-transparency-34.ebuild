# Distributed under the terms of the GNU General Public License v2

EAPI=7

MY_PN="${PN/gnome-shell-extension-/}"
MY_P="${MY_PN}-${PV}"
DESCRIPTION="A GNOME Shell extension for providing Dynamic Panel Transparency"
HOMEPAGE="https://github.com/ewlsh/dynamic-panel-transparency/"
SRC_URI="https://extensions.gnome.org/extension-data/dynamic-panel-transparencyrockon999.github.io.v${PV}.shell-extension.zip -> ${P}.zip"
LICENSE="GPL-3"
SLOT="0"
KEYWORDS="amd64"
IUSE=""
EXTENSION_NAME="${MY_PN}@rockon999.github.io"

COMMON_DEPEND="dev-libs/glib:2"
RDEPEND="${COMMON_DEPEND}
	app-eselect/eselect-gnome-shell-extensions
	>=gnome-base/gnome-shell-3.30.0
	>=gnome-base/nautilus-3.30.4
"
DEPEND="${COMMON_DEPEND}"
BDEPEND=""

S="${WORKDIR}/${MY_P}"

src_unpack() {
	cd ${WORKDIR}
	mkdir ${MY_P}
	cd ${MY_P}
	unpack ${A}
}

src_install() {
	local extdir=/usr/share/gnome-shell/extensions/

	dodir ${extdir}/${EXTENSION_NAME}

	for i in * ; do
		if [[ ${i} == "LICENSE" || ${i} == "COPYING" ]] ; then
			continue
		fi
		cp -r ${S}/${i} ${D}/${extdir}/${EXTENSION_NAME}/
	done

	dodoc LICENSE COPYING
}

pkg_preinst() {
	gnome2_schemas_savelist
}

pkg_postinst() {
	gnome2_schemas_update
	ebegin "Updating list of installed extensions"
	eselect gnome-shell-extensions update
	eend $?
}

pkg_postrm() {
	gnome2_schemas_update
}
