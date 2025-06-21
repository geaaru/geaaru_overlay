# Distributed under the terms of the GNU General Public License v2

EAPI=7
inherit gnome3-utils

MY_PN="${PN/gnome-shell-extension-/}"
MY_P="${MY_PN}-${PV}"
DESCRIPTION="A GNOME Shell extension for providing desktop icons"
HOMEPAGE="https://gitlab.gnome.org/World/ShellExtensions/desktop-icons"
SRC_URI="https://extensions.gnome.org/extension-data/compiz-windows-effecthermes83.github.com.v${PV}.shell-extension.zip"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="amd64"
IUSE=""

COMMON_DEPEND="dev-libs/glib:2"
RDEPEND="${COMMON_DEPEND}
	app-eselect/eselect-gnome-shell-extensions
	>=gnome-base/gnome-shell-3.30.0
	>=gnome-base/nautilus-3.30.4
"
DEPEND="${COMMON_DEPEND}"
BDEPEND=""

GNOME_SHELL_EXTNAME="compiz-windows-effect@hermes83.github.com"

S="${WORKDIR}"

pkg_preinst() {
	gnome3_schemas_savelist
}

src_install() {
	insinto /usr/share/gnome-shell/extensions/${GNOME_SHELL_EXTNAME}
	for i in extension.js metadata.json prefs.js settings.js ; do
		doins $i
	done

	insinto /usr/share/glib-2.0/schemas/
	doins schemas/org.gnome.shell.extensions.com.github.hermes83.compiz-windows-effect.gschema.xml
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
