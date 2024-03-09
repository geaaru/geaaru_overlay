# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )

inherit autotools

SRC_URI="https://github.com/waydroid/waydroid/tarball/209c90d47330ddb357b5209309c80c4257f05fe3 -> waydroid-1.4.2-209c90d.tar.gz"

DESCRIPTION="Container-based approach to boot a full Android system on a regular GNU/Linux"
HOMEPAGE="https://github.com/waydroid/waydroid"

LICENSE="GPL-3.0"
SLOT="0"
KEYWORDS="*"
IUSE="systemd apparmor nftables"

DEPEND="
	dev-python/gbinder-python[${PYTHON_COMPAT}]
	sys-libs/libgbinder
"
RDEPEND="$DEPEND
	app-emulation/lxc
	dev-python/pyclip[${PYTHON_COMPAT}]
"

post_src_unpack() {
	mv "${WORKDIR}"/waydroid* "${S}" || die
}

src_prepare() {
	# On Macaroni/Funtoo apparmor is not available
	# at the moment. This generates bootstrap issue
	# on container when this option is present:
	# lxc.apparmor.profile = unconfined
	sed -i -e 's|^lxc.apparmor.profile|#lxc.apparmor.profile|g' \
		data/configs/config_3
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