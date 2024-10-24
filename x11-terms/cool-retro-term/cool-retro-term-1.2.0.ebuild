# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit gnome3-utils qmake-utils

QTW_PN=qmltermwidget
QTW_PV=63228027e1f97c24abb907550b22ee91836929c5
QTW_P=${QTW_PN}-${QTW_PV}

DESCRIPTION="terminal emulator which mimics the look and feel of the old cathode tube screens"
HOMEPAGE="https://github.com/Swordfish90/cool-retro-term"
SRC_URI="https://github.com/Swordfish90/cool-retro-term/archive/${PV}.tar.gz -> ${P}.tar.gz
	https://github.com/Swordfish90/qmltermwidget/archive/${QTW_PV}.tar.gz -> ${QTW_P}.tar.gz"

LICENSE="GPL-2 GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="
	dev-qt/qtdeclarative:5[localstorage]
	dev-qt/qtgraphicaleffects:5
	dev-qt/qtquickcontrols:5[widgets]
	dev-qt/qtsql:5
	dev-qt/qtwidgets:5
"

RDEPEND="${DEPEND}"

src_prepare() {
	default

	rmdir qmltermwidget || die
	mv "${WORKDIR}/${QTW_P}" qmltermwidget || die

	# Fix std:iswspace
	#sed -i -e '/^#include "konsole_wcwidth.h/a #include <cwctype>' \
	#	qmltermwidget/lib/TerminalCharacterDecoder.cpp || die
}

src_configure() {
	eqmake5 PREFIX="${EPREFIX}/usr"
}

src_install() {
	# default attempts to install directly to /usr
	emake -j1 INSTALL_ROOT="${D}" install || die
	doman packaging/debian/cool-retro-term.1

	insinto "/usr/share/metainfo"
	doins "packaging/appdata/cool-retro-term.appdata.xml"
}

pkg_preinst() { gnome3_schemas_savelist; }
pkg_postinst() { gnome3_schemas_update; }
pkg_postrm() { gnome3_schemas_update; }
