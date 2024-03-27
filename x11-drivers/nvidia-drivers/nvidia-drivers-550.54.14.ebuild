# Distributed under the terms of the GNU General Public License v2

EAPI=6
inherit desktop eutils flag-o-matic linux-info linux-mod nvidia-driver \
	portability toolchain-funcs unpacker user udev

DESCRIPTION="NVIDIA Accelerated Graphics Driver"
HOMEPAGE="http://www.nvidia.com/ http://www.nvidia.com/Download/Find.aspx"

AMD64_NV_PACKAGE="NVIDIA-Linux-x86_64-${PV}"
ARM64_NV_PACKAGE="NVIDIA-Linux-aarch64-${PV}"

NV_URI="http://download.nvidia.com/XFree86/"

SRC_URI="
	amd64? ( ${NV_URI}Linux-x86_64/${PV}/${AMD64_NV_PACKAGE}-no-compat32.run )
	arm64? ( ${NV_URI}Linux-aarch64/${PV}/NVIDIA-Linux-aarch64-${PV}.run )
"

LICENSE="GPL-2 NVIDIA-r2"
SLOT="0/${PV%.*}"
KEYWORDS=""
RESTRICT="bindist strip"
EMULTILIB_PKG="true"

IUSE_DUMMY="static-libs acpi"
IUSE="${IUSE_DUMMY} +X +opencl +cuda +tools +egl +glvnd +uvm +wayland +powerd"

COMMON="
	opencl? (
		dev-libs/ocl-icd
	)
	>=sys-libs/glibc-2.6.1
	X? ( app-misc/pax-utils
		!glvnd? ( >=app-eselect/eselect-opengl-1.0.9 )
		glvnd? ( >=media-libs/libglvnd-1.0.0.20180424 )
	)
"

DEPEND="
	${COMMON}
	virtual/linux-sources
"

RDEPEND="
	${COMMON}
	acpi? ( sys-power/acpid )
	wayland? ( dev-libs/wayland )
	X? (
		>=x11-base/xorg-server-1.20.8
		>=x11-libs/libX11-1.6.2
		>=x11-libs/libXext-1.3.2
		>=x11-libs/libvdpau-1.0
		sys-libs/zlib
		x11-libs/gtk+:3
	)
"

S="${WORKDIR}/"

NV_ROOT="${EPREFIX}/opt/nvidia/${P}"
NV_DISTFILES_PATH="${NV_ROOT}/distfiles/"
NV_NATIVE_LIBDIR="${NV_ROOT%/}/lib64"
NV_COMPAT32_LIBDIR="${NV_ROOT%/}/lib32"

QA_PREBUILT="${NV_ROOT#${EPREFIX}/}/*"

# Relative to $NV_ROOT
NV_BINDIR="bin"
NV_INCDIR="include"
NV_SHAREDIR="share"

# Relative to $NV_ROOT/lib{32,64}
NV_LIBDIR="/"
NV_OPENGL_VEND_DIR="opengl/nvidia"
NV_OPENCL_VEND_DIR="OpenCL/nvidia"
NV_X_MODDIR="xorg/modules"

# Maximum supported kernel version in form major.minor
: "${NV_MAX_KERNEL_VERSION:=6.3}"

# Fixups for issues with particular versions of the package.
nv_do_fixups() {
	# This creates a missing symlink which would otherwise cause a Portage warning:
	foo=$(ls ${D}${NV_NATIVE_LIBDIR}/libnvidia-egl-wayland.so.1.*)
	if [ -e "$foo" ] && [ ! -e "${D}${NV_NATIVE_LIBDIR}/libnvidia-egl-wayland.so.1" ]; then
		dosym ${foo##*/} ${NV_NATIVE_LIBDIR}/libnvidia-egl-wayland.so.1
	fi
	# This creates a symlink so that nvidia-settings can find the default nvidia application profiles. Weird issue.
	foo=$(ls ${D}${NV_ROOT}/share/nvidia/*-key-documentation)
	if [ -e "$foo" ]; then
		dosym ${foo##*/} ${NV_ROOT}/share/nvidia/nvidia-application-profiles-key-documentation
	fi
}

nvidia_drivers_versions_check() {
	if use kernel_linux && kernel_is ge ${NV_MAX_KERNEL_VERSION%%.*} ${NV_MAX_KERNEL_VERSION#*.}; then
		ewarn "These NVIDIA drivers are designed to work with Linux ${NV_MAX_KERNEL_VERSION} or earlier."
	fi

	# Since Nvidia ships many different series of drivers, we need to give the user
	# some kind of guidance as to what version they should install. This tries
	# to point the user in the right direction but can't be perfect. check
	# nvidia-driver.eclass
	nvidia-driver-check-warning

	# Kernel features/options to check for
	CONFIG_CHECK="~ZONE_DMA ~MTRR ~SYSVIPC ~!LOCKDEP"
	use cuda && CONFIG_CHECK+=" ~NUMA ~CPUSETS"
	check_extra_config
}

pkg_pretend() {
	nvidia_drivers_versions_check
}

pkg_setup() {
	nvidia_drivers_versions_check
	# set variables to where files are in the package structure
	NV_KMOD_SRC="${S}/kernel"
}

src_unpack() {
	if [ -z "${SRC_URI}" ] ; then
		if [ -d "${NV_DISTFILES_PATH}" ] ; then
			use amd64 && NV_PACKAGE="${AMD64_NV_PACKAGE}"
			use arm64 && NV_PACKAGE="${ARM64_NV_PACKAGE}"
			if [ -f "${NV_DISTFILES_PATH}/${NV_PACKAGE}.run" ] ; then
				unpacker "${NV_DISTFILES_PATH}/${NV_PACKAGE}.run"
			else
				die "No '${NV_PACKAGE}.run' exists in '${NV_DISTFILES_PATH}'."
			fi
		else
			die "No SRC_URI given and no '${NV_DISTFILES_PATH}' directory exists."
		fi
	else
		unpacker
	fi
}

src_prepare() {
	default

	# Reclassify wayland-related files to MODULE:wayland
	sed -e 's:\(wayland.*\)egl:\1wayland:g' -i .manifest

	# prevent detection of incomplete kernel DRM support (bug #603818)
	#sed 's/defined(CONFIG_DRM/defined(CONFIG_DRM_KMS_HELPER/g' \
	#	-i kernel{,-module-source/kernel-open}/conftest.sh || die

	# enable nvidia-drm.modeset=1 by default with USE=wayland
	cp "${FILESDIR}"/nvidia.conf "${T}"/nvidia.conf || die
	use !wayland || sed -i '/^#.*modeset=1$/s/^#//' "${T}"/nvidia.conf || die

	# makefile attempts to install wayland library even if not built
	use wayland || sed -i 's/ WAYLAND_LIB_install$//' \
		nvidia-settings/src/Makefile || die
}

src_install() {
	[ -r .manifest ] || die "Can not read .manifest!"
	local name perms type f4 f5 f6 f7
	local module fields

	local libdir=$(get_libdir)
	local -A paths=(
		[APPLICATION_PROFILE]=/usr/share/nvidia
		[CUDA_ICD]=/etc/OpenCL/vendors
		[EGL_EXTERNAL_PLATFORM_JSON]=/usr/share/egl/egl_external_platform.d
		[FIRMWARE]=/lib/firmware/nvidia/${PV}
		[GBM_BACKEND_LIB_SYMLINK]=/usr/${libdir}/gbm
		[GLVND_EGL_ICD_JSON]=/usr/share/glvnd/egl_vendor.d
		[OPENGL_DATA]=/usr/share/nvidia
		[VULKAN_ICD_JSON]=/usr/share/vulkan
		[WINE_LIB]=/usr/${libdir}/nvidia/wine
		[XORG_OUTPUTCLASS_CONFIG]=/usr/share/X11/xorg.conf.d

		[GLX_MODULE_SHARED_LIB]=/usr/${libdir}/xorg/modules/extensions
		[GLX_MODULE_SYMLINK]=/usr/${libdir}/xorg/modules
		[XMODULE_SHARED_LIB]=/usr/${libdir}/xorg/modules
	)

	local skip_files=(
		$(usev !X "libGLX_nvidia libglxserver_nvidia")
		$libGLX_indirect # non-glvnd unused fallback
		libnvidia-{gtk,wayland-client} nvidia-{settings,xconfig} # from source
		#libnvidia-egl-gbm 15_nvidia_gbm # gui-libs/egl-gbm
		#libnvidia-egl-wayland 10_nvidia_wayland # gui-libs/egl-wayland
		libnvidia-pkcs11.so # using the openssl3 version instead
	)
	local skip_modules=(
		$(usev !X "nvfbc vdpau xdriver")
		gsp
		$(usev !powerd powerd)
		installer nvpd # handled separately / built from source
	)
	local skip_types=(
		GLVND_LIB GLVND_SYMLINK EGL_CLIENT.\* GLX_CLIENT.\* # media-libs/libglvnd
		OPENCL_WRAPPER.\* # virtual/opencl
		DOCUMENTATION DOT_DESKTOP .\*_SRC DKMS_CONF SYSTEMD_UNIT # handled separately / unused
	)

	local DOCS=(
		README.txt NVIDIA_Changelog supported-gpus/supported-gpus.json
	)
	local HTML_DOCS=( html/. )
	einstalldocs

	# mimic nvidia-installer by reading .manifest to install files
	# 0:file 1:perms 2:type 3+:subtype/arguments -:module
	local m into
	while IFS=' ' read -ra m; do
		! [[ ${#m[@]} -ge 2 && ${m[-1]} =~ MODULE: ]] ||
			[[ " ${m[0]##*/}" =~ ^(\ ${skip_files[*]/%/.*|\\} )$ ]] ||
			[[ " ${m[2]}" =~ ^(\ ${skip_types[*]/%/|\\} )$ ]] ||
			has ${m[-1]#MODULE:} "${skip_modules[@]}" && continue

		case ${m[2]} in
			MANPAGE)
				gzip -dc ${m[0]} | newman - ${m[0]%.gz}; assert
				continue
			;;
			GBM_BACKEND_LIB_SYMLINK) m[4]=../${m[4]};; # missing ../
			VDPAU_SYMLINK) m[4]=vdpau/; m[5]=${m[5]#vdpau/};; # .so to vdpau/
		esac

		if [[ -v 'paths[${m[2]}]' ]]; then
			into=${paths[${m[2]}]}
		elif [[ ${m[2]} == EXPLICIT_PATH ]]; then
			into=${m[3]}
		elif [[ ${m[2]} == *_BINARY ]]; then
			into=/opt/bin
		elif [[ ${m[3]} == COMPAT32 ]]; then
			continue
		# Doesn't support systemd for now
		elif [[ ${m[3]} == SYSTEMD_* ]]; then
			continue
		elif [[ ${m[2]} == *_@(LIB|SYMLINK) ]]; then
			into=/usr/${libdir}
		else
			die "No known installation path for ${m[0]}"
		fi
		[[ ${m[3]: -2} == ?/ ]] && into+=/${m[3]%/}
		[[ ${m[4]: -2} == ?/ ]] && into+=/${m[4]%/}

		if [[ ${m[2]} =~ _SYMLINK$ ]]; then
			[[ ${m[4]: -1} == / ]] && m[4]=${m[5]}
			dosym ${m[4]} ${into}/${m[0]}
			continue
		fi
		[[ ${m[0]} =~ ^libnvidia-ngx.so|^libnvidia-egl-gbm.so ]] &&
			dosym ${m[0]} ${into}/${m[0]%.so*}.so.1 # soname not in .manifest

		printf -v m[1] %o $((m[1] | 0200)) # 444->644
		insopts -m${m[1]}
		insinto ${into}
		doins ${m[0]}
	done < .manifest || die
	insopts -m0644 # reset


	dobin nvidia-bug-report.sh

	# MODULE:powerd extras
	if use powerd; then
		newinitd "${FILESDIR}"/nvidia-powerd.initd nvidia-powerd #923117

		insinto /usr/share/dbus-1/system.d
		doins nvidia-dbus.conf
	fi

	# symlink non-versioned so nvidia-settings can use it even if misdetected
	dosym nvidia-application-profiles-${PV}-key-documentation \
		${paths[APPLICATION_PROFILE]}/nvidia-application-profiles-key-documentation

	# don't attempt to strip firmware files (silences errors)
	dostrip -x ${paths[FIRMWARE]}

	# sandbox issues with /dev/nvidiactl others (bug #904292,#921578)
	# are widespread and sometime affect revdeps of packages built with
	# USE=opencl/cuda making it hard to manage in ebuilds (minimal set,
	# ebuilds should handle manually if need others or addwrite)
	insinto /etc/sandbox.d
	newins - 20nvidia <<<'SANDBOX_PREDICT="/dev/nvidiactl:/dev/nvidia-caps:/dev/char"'


	if use tools; then
		#emake "${NV_ARGS[@]}" -C nvidia-settings install
		for tool in settings smi xconfig; do
			[ -f "${D}${NV_ROOT}/bin/nvidia-${tool}" ] && dosym "${NV_ROOT}/bin/nvidia-${tool}" "/usr/bin/nvidia-${tool}"
		done

		doicon nvidia-settings/doc/nvidia-settings.png
		domenu nvidia-settings/doc/nvidia-settings.desktop

		exeinto /etc/X11/xinit/xinitrc.d
		newexe "${FILESDIR}"/95-nvidia-settings-r1 95-nvidia-settings
	fi

	# If 'X' flag is enabled, link nvidia-drm-outputclass.conf into system xorg.conf.d directory (xorg 1.16 and up),
	# link nvidia_drv.so into /usr/$(get_libdir)/xorg/modules/drivers,
	# and link nvidia_icd.json into system vulkan/icd.d directory.
	if use X; then

		# Xorg nvidia.conf
		if has_version '>=x11-base/xorg-server-1.16'; then
			dosym "${NV_ROOT}/share/X11/xorg.conf.d/nvidia-drm-outputclass.conf" "/usr/share/X11/xorg.conf.d/50-nvidia-drm-outputclass.conf"
		fi

		# Xorg driver nvidia_drv.so
		dosym "${NV_NATIVE_LIBDIR}/xorg/modules/drivers/nvidia_drv.so" "/usr/$(get_libdir)/xorg/modules/drivers/nvidia_drv.so"
	fi

	# If 'egl' flag is enabled, link 10_nvidia.json into the system egl_vendor.d directory.
	use egl && dosym "${NV_ROOT}/share/glvnd/egl_vendor.d/10_nvidia.json" "/usr/share/glvnd/egl_vendor.d/10_nvidia.json"

	# If 'egl' flag is enabled, link 10_nvidia_wayland.json into the system egl_external_platform.d directory.
	use wayland && dosym "${NV_ROOT}/share/egl/egl_external_platform.d/10_nvidia_wayland.json" "/usr/share/egl/egl_external_platform.d/10_nvidia_wayland.json"

	# OpenCL ICD for NVIDIA
	# If 'opencl' or 'cuda' flags are enabled, link nvidia.icd into system OpenCL/vendors directory.
	( use opencl || use cuda ) && dosym "${NV_ROOT}/share/OpenCL/vendors/nvidia.icd" "/etc/OpenCL/vendors/nvidia.icd"

	# On linux kernels, install nvidia-persistenced init and conf files after fixing up paths.
	for filename in nvidia-{smi,persistenced}.init ; do
		sed -e 's:/opt/bin:'"${NV_ROOT}"'/bin:g' "${FILESDIR}/${filename}" > "${T}/${filename}"
		newinitd "${T}/${filename}" "${filename%.init}"
	done
	newconfd "${FILESDIR}/nvidia-persistenced.conf" nvidia-persistenced

	# If we're not using glvnd support, then set up directory expected by eselect opengl:
	if ! use glvnd ; then
		dosym "${NV_NATIVE_LIBDIR}/opengl/nvidia" "${EPREFIX}/usr/lib/opengl/nvidia"
	fi

	# Setup an env.d file with appropriate lib paths.
	ldpath="${NV_NATIVE_LIBDIR}:${NV_NATIVE_LIBDIR}/tls"
	printf -- "LDPATH=\"${ldpath}\"\n" > "${T}/09nvidia"
	doenvd "${T}/09nvidia"

	# Run fixups specific to this driver (defined at top)
	nv_do_fixups

	for x in ${D}/${NV_ROOT}/share/man/man1/*; do
		gzip -d $x
		doman ${x%.gz}
	done
	rm -rf ${D}/${NV_ROOT}/share/man || die

	readme.gentoo_create_doc
}


pkg_preinst() {
	#has_version "${CATEGORY}/${PN}[kernel-open]" && NV_HAD_KERNEL_OPEN=
	has_version "${CATEGORY}/${PN}[wayland]" && NV_HAD_WAYLAND=

	# Clean the dynamic libGL stuff's home to ensure
	# we dont have stale libs floating around
	if [ -d "${ROOT}"/usr/lib/opengl/nvidia ]; then
		rm -rf "${ROOT}"/usr/lib/opengl/nvidia
	fi
	# Make sure we nuke the old nvidia-glx's env.d file
	if [ -e "${ROOT}"/etc/env.d/09nvidia ]; then
		rm -f "${ROOT}"/etc/env.d/09nvidia
	fi
}

pkg_postinst() {
	readme.gentoo_print_elog
}
