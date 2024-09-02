# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )

inherit autotools distutils-r1 xdg-utils

SRC_URI="https://github.com/waydroid/waydroid/tarball/9cd66662ba53d491ce7e3c74218b5194267a6f68 -> waydroid-1.4.3-9cd6666.tar.gz"

DESCRIPTION="Container-based approach to boot a full Android system on a regular GNU/Linux"
HOMEPAGE="https://github.com/waydroid/waydroid"

LICENSE="GPL-3.0"
SLOT="0"
KEYWORDS="*"
IUSE="systemd apparmor nftables"

DEPEND="
	dev-python/gbinder-python[${PYTHON_USEDEP}]
	sys-libs/libgbinder
"
RDEPEND="$DEPEND
	app-emulation/lxc
	dev-python/pyclip[${PYTHON_USEDEP}]
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
		data/configs/config_3 || die "Error on update config_3"

	# Avoid Probing of AshMem not available
	# in vanilla kernel. When the driver will be available
	# this could be added in the autoload.d directory.
	sed -i -e 's|helpers.drivers.probeAshmemDriver|#helpers.drivers.probeAshmemDriver|g' \
		tools/actions/container_manager.py \
		tools/actions/initializer.py \
		tools/actions/upgrader.py || die "Error on disable ashmem probe"

	eapply_user
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

pkg_postinst() {
	xdg_desktop_database_update
}

pkg_postrm() {
	xdg_desktop_database_update
}

# vim: filetype=ebuild