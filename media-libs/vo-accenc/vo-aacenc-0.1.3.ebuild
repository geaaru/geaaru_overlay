# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit flag-o-matic multilib-minimal

SRC_URI="mirror://sourceforge/opencore-amr/${P}.tar.gz"
KEYWORDS="*"

DESCRIPTION="VisualOn AAC encoder library"
HOMEPAGE="https://sourceforge.net/projects/opencore-amr/"

LICENSE="Apache-2.0"
SLOT="0"
IUSE="cpu_flags_arm_neon examples static-libs"

multilib_src_configure() {
	if use cpu_flags_arm_neon; then
		local -x CFLAGS="${CFLAGS}"
		append-cflags -mfpu=neon
	fi

	ECONF_SOURCE="${S}" econf \
		$(use_enable cpu_flags_arm_neon armv7neon) \
		$(use_enable examples example) \
		$(use_enable static-libs static)
}

multilib_src_install_all() {
	einstalldocs

	# package provides .pc files
	find "${D}" -name '*.la' -delete || die
}
