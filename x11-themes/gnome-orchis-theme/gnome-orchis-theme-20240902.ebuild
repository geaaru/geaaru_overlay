# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Orchis is a Material Design theme for GNOME/GTK based desktop environments. "
HOMEPAGE="https://github.com/vinceliuice/Orchis-theme"
SRC_URI="https://github.com/vinceliuice/Orchis-theme/tarball/c5eee722f87cfd258fef552ea5517be74c3ec82c -> Orchis-theme-20240902-c5eee72.tar.gz"


LICENSE="GPL-3.0"
SLOT="0"
KEYWORDS="*"
IUSE="compact solid black purple pink red orange yellow primary macos"

RDEPEND="dev-libs/libxml2:2
	x11-libs/gtk+:3
	x11-themes/gtk-engines-murrine"

DEPEND="${RDEPEND}
	dev-libs/glib:2
	>=dev-ruby/sass-3.5
	x11-libs/gdk-pixbuf:2"

post_src_unpack() {
	mv vinceliuice-Orchis-theme-* ${S}
}

src_install() {
	local args=()

	if use compact ; then
		args+=(
			--tweaks compact
		)
	else
		if use solid ; then
			args+=(
				--tweaks solid
			)
		else
			if use black ; then
			args+=(
				--tweaks black
			)
			else
				if use primary ; then
					args+=(
						--tweaks primary
					)
				fi
			fi
		fi
	fi

	einfo "Using args: ${args[@]}"

	${S}/install.sh -d ${D}/usr/share/themes ${args[@]}

	for i in purple pink red orange yellow ; do
		if use $i ; then
			${S}/install.sh -d ${D}/usr/share/themes ${args[@]} --theme $i
		fi
	done

	if use macos ; then
		${S}/install.sh -d ${D}/usr/share/themes --tweaks macos -n Orchis-Macos
	fi
}

# vim: filetype=ebuild