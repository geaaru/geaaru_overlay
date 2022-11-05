# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit meson git-r3

DESCRIPTION="FUSE filesystem for LXC"
HOMEPAGE="https://linuxcontainers.org/lxcfs/introduction/"
EGIT_REPO_URI="https://github.com/lxc/lxcfs.git"
EGIT_COMMIT="6ea5370b8c4fde3ae5fecad9d7af9ddfd173a6b6"

LICENSE="Apache-2.0"
SLOT="0"

KEYWORDS=""

# Omit all dbus.  Upstream appears to require it because systemd, but
# lxcfs makes no direct use of dbus.
RDEPEND="
	sys-fs/fuse:3
"
DEPEND="
	sys-apps/help2man
	${RDEPEND}
"

pkg_setup() {
	export BUILD_DIR=${WORKDIR}/build
}

src_configure() {
		#$(meson_use doc docs)
	local emesonargs=(
		--localstatedir "${EPREFIX}/var"

		-Dinit-script=openrc
		-Dfuse-version=3
	)

	meson_src_configure
}

src_install() {
	meson_src_install

	newinitd "${FILESDIR}"/lxcfs.initd lxcfs
	newconfd "${FILESDIR}"/lxcfs.confd lxcfs

	find "${ED}" -name '*.la' -delete || die

	# we are using own init scripts, so do not need included
	rm -rf "${ED}"/etc/rc.d
}

