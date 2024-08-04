# Distributed under the terms of the GNU General Public License v2

EAPI=7
inherit eutils flag-o-matic linux-info linux-mod multilib-minimal \
	portability toolchain-funcs unpacker user udev

DESCRIPTION="NVIDIA GPU Kernel Modules"
HOMEPAGE="http://www.nvidia.com/ http://www.nvidia.com/Download/Find.aspx"
SRC_URI=""

LICENSE="GPL-2 NVIDIA-r2"
SLOT="550"
KEYWORDS="-* ~amd64 ~arm64"
RESTRICT="bindist"

IUSE="+kms +uvm videogroup open-kernel"

DEPEND="
	~x11-drivers/nvidia-drivers-${PV}
	virtual/linux-sources
"
NVDRIVERS_DIR="${EPREFIX}/opt/nvidia/nvidia-drivers-${PV}"
S="${WORKDIR}/kernel"

# Maximum supported kernel version in form major.minor
: "${NV_MAX_KERNEL_VERSION:=6.7}"


nvidia_drivers_versions_check() {
	if kernel_is ge ${NV_MAX_KERNEL_VERSION%%.*} ${NV_MAX_KERNEL_VERSION#*.}; then
		ewarn "These NVIDIA kernel modules are designed to work with Linux ${NV_MAX_KERNEL_VERSION} or earlier."
	fi

	# Kernel features/options to check for
	CONFIG_CHECK="~ZONE_DMA ~MTRR ~SYSVIPC ~!LOCKDEP"
	use x86 && CONFIG_CHECK+=" ~HIGHMEM"

	# Now do the above checks
	check_extra_config
}

pkg_pretend() {
	nvidia_drivers_versions_check
}

pkg_setup() {
	# Check our config is good.
	nvidia_drivers_versions_check

	# Try to turn off distcc and ccache for people that have a problem with it.
	export DISTCC_DISABLE=1
	export CCACHE_DISABLE=1

	MODULE_NAMES="nvidia(video:${S})"

	use_if_iuse uvm && MODULE_NAMES+=" nvidia-uvm(video:${S})"
	use_if_iuse kms && MODULE_NAMES+=" nvidia-modeset(video:${S}) nvidia-drm(video:${S})"

	# This needs to run after MODULE_NAMES (so that the eclass checks
	# whether the kernel supports loadable modules) but before BUILD_PARAMS
	# is set (so that KV_DIR is populated).
	linux-mod_pkg_setup

	BUILD_PARAMS="IGNORE_CC_MISMATCH=yes V=1 SYSSRC=${KV_DIR} \
		SYSOUT=${KV_OUT_DIR} CC=$(tc-getBUILD_CC) NV_VERBOSE=1"

	# linux-mod_src_compile calls set_arch_to_kernel, which
	# sets the ARCH to x86 but NVIDIA's wrapping Makefile
	# expects x86_64 or i386 and then converts it to x86
	# later on in the build process
	BUILD_FIXES="ARCH=$(uname -m | sed -e 's/i.86/i386/')"
}

src_unpack() {
	if use open-kernel ; then
		cp -r "${NVDRIVERS_DIR}/src/kernel-open" "${S}" || die
	else
		cp -r "${NVDRIVERS_DIR}/src/kernel" "${S}" || die
	fi
}


src_prepare() {
	# Apply patches for our exact package and version
	local mypatch
	for mypatch in "${FILESDIR}"/${P}*.patch ; do
		[ "${mypatch}" = "${FILESDIR}/${P}*.patch" ] && break
		eapply "${mypatch}"
	done

	default
}

src_compile() {
	# This is already the default on Linux, as there's no toplevel Makefile, but
	# on FreeBSD there's one and triggers the kernel module build, as we install
	# it by itself, pass this.

	cd "${NV_SRC}"
	MAKEOPTS=-j1 linux-mod_src_compile
}

_nvidia_mod_src_install() {
	local modulename libdir srcdir objdir i n
	[[ -n ${KERNEL_DIR} ]] && addpredict "${KERNEL_DIR}/null.dwo"

	strip_modulenames;
	for i in ${MODULE_NAMES}
	do
		unset libdir srcdir objdir
		for n in $(find_module_params ${i})
		do
			eval ${n/:*}=${n/*:/}
		done
		libdir=${libdir:-misc}
		srcdir=${srcdir:-${S}}
		objdir=${objdir:-${srcdir}}

		einfo "Installing ${modulename} module"
		cd "${objdir}" || die "${objdir} does not exist"
		insinto /lib/modules/nvidia/${PV}/${KV_FULL}/${libdir}
		doins ${modulename}.${KV_OBJ} || die "doins ${modulename}.${KV_OBJ} failed"
		cd "${OLDPWD}"

		generate_modulesd "${objdir}/${modulename}"
	done
}


src_install() {
	_nvidia_mod_src_install
	insinto /etc/modprobe.d
	if use videogroup; then
		newins "${FILESDIR}"/nvidia.conf.modprobe-r1.video nvidia.conf
	else
		newins "${FILESDIR}"/nvidia.conf.modprobe-r1 nvidia.conf
	fi
	newins "${FILESDIR}"/nvidia-rmmod.conf.modprobe nvidia-rmmod.conf
	doins "${FILESDIR}"/nouveau-blacklist.conf
	# Ensures that our device nodes are created when not using X
	sed -e 's:/opt/bin:'"${NVDRIVERS_DIR}"'/bin:g' "${FILESDIR}/nvidia-udev.sh" > "${T}/nvidia-udev.sh"
	exeinto "$(get_udevdir)"
	doexe "${T}"/nvidia-udev.sh
	udev_newrules "${FILESDIR}"/nvidia.udev-rule 99-nvidia.rules
}

pkg_preinst() {
	linux-mod_pkg_preinst
	if use videogroup; then
		local videogroup="$(egetent group video | cut -d ':' -f 3)"
		if [ -z "${videogroup}" ]; then
			eerror "Failed to determine the video group gid"
			die "Failed to determine the video group gid"
		else
			sed -i \
				-e "s:PACKAGE:${PF}:g" \
				-e "s:VIDEOGID:${videogroup}:" \
				"${D}"/etc/modprobe.d/nvidia.conf || die
		fi
	fi
}

pkg_postinst() {
	linux-mod_pkg_postinst
	if use videogroup; then
		einfo "NVIDIA device nodes have been configured to require video group"
		einfo "membership (via videogroup USE variable.) Please be sure to add"
		einfo "any user accounts that need to access NVIDIA devices to this"
		einfo "group."
	fi
}

# vim: filetype=ebuild