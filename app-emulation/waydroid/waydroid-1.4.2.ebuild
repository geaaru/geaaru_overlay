# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit autotools

SRC_URI="https://github.com/waydroid/waydroid/tarball/209c90d47330ddb357b5209309c80c4257f05fe3 -> waydroid-1.4.2-209c90d.tar.gz"

DESCRIPTION="Container-based approach to boot a full Android system on a regular GNU/Linux"
HOMEPAGE="https://github.com/waydroid/waydroid"

LICENSE="GPL-3.0"
SLOT="0"
KEYWORDS="*"
IUSE="systemd apparmor nftables"

post_src_unpack() {
	mv "${WORKDIR}"/waydroid* "${S}" || die
}

src_compile() {
	# do nothing
	echo "Nothing to compile. Go ahead"
}

src_install() {
	USE_SYSTEMD=$(usex systemd 1 0) \
		USE_NFTABLES=$(usex nftables 1 0) \
		DESTDIR=${D} \
		emake install

	if use apparmor ; then
		USE_SYSTEMD=$(usex systemd 1 0) \
			USE_NFTABLES=$(usex nftables 1 0) \
			DESTDIR=${D} \
		emake install_apparmor
	fi
}

# vim: filetype=ebuild