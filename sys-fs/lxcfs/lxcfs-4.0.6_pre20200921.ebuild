# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit systemd git-r3

DESCRIPTION="FUSE filesystem for LXC"
HOMEPAGE="https://linuxcontainers.org/lxcfs/introduction/"
EGIT_REPO_URI="https://github.com/lxc/lxcfs.git"
EGIT_COMMIT="184fcdda7be32da27d36923fe0ac7dff474ed398"

LICENSE="Apache-2.0"
SLOT="0"

KEYWORDS="~amd64 ~arm ~arm64"

# Omit all dbus.  Upstream appears to require it because systemd, but
# lxcfs makes no direct use of dbus.
RDEPEND="
	dev-libs/glib:2
	sys-fs/fuse
"
DEPEND="
	sys-apps/help2man
	${RDEPEND}
"
src_prepare() {
	sed -i -e 's:/bin/fusermount:/usr/bin/fusermount:g' \
		${S}/config/init/systemd/lxcfs.service.in
	default
	./bootstrap.sh || die "Failed to bootstrap configure files"
}

src_configure() {
	# Without the localstatedir the filesystem isn't mounted correctly
	econf --localstatedir=/var
}

# Test suite fails for me
# src_test() {
# 	emake tests
# 	tests/main.sh || die "Tests failed"
# }

src_install() {
	default
	keepdir /var/lib/lxcfs
	newinitd "${FILESDIR}"/${PN}-3.0.0.initd lxcfs
	systemd_dounit config/init/systemd/lxcfs.service
}

pkg_preinst() {
	# In an upgrade situation merging /var/lib/lxcfs (an empty dir)
	# fails because that is a live mountpoint when the service is
	# running.  It's unnecessary anyway so skip the action.
	[[ -d ${ROOT}/var/lib/lxcfs ]] && rm -rf ${D}/var
}

pkg_postinst() {
	einfo
	einfo "Starting with version 3.0.0 the cgfs PAM module has moved, and"
	einfo "will eventually be available in app-emulation/lxc.  See:"
	einfo "https://brauner.github.io/2018/02/28/lxc-includes-cgroup-pam-module.html"
	einfo "for more information."
	einfo
}
