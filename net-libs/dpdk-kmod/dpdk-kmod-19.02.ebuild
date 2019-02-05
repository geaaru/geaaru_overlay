# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit toolchain-funcs flag-o-matic linux-info linux-mod

MY_PN=${PN/-kmod/}

DESCRIPTION="A set of libraries and drivers for fast packet processing"
HOMEPAGE="http://dpdk.org/"
SRC_URI="http://fast.${MY_PN}.org/rel/${MY_PN}-${PV}.tar.xz"

LICENSE="BSD-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="libressl static-libs"

DEPEND="net-libs/dpdk
	sys-process/numactl
	dev-libs/jansson
	!libressl? ( dev-libs/openssl:0= )
	libressl? ( dev-libs/libressl:0= )
"
RDEPEND="${DEPEND}"
DEPEND="${DEPEND}
	dev-lang/nasm
"

S="${WORKDIR}/${MY_PN}-${PV}"

pkg_setup() {
	CONFIG_CHECK="~IOMMU_SUPPORT ~AMD_IOMMU ~VFIO ~VFIO_PCI ~UIO ~UIO_PDRV_GENIRQ ~UIO_DMEM_GENIRQ"
	MODULE_NAMES="igb_uio(extra/dpdk:${S}/kernel/linux/igb_uio)
		rte_kni(extra/dpdk:${S}/kernel/linux/kni)"
	linux-mod_pkg_setup
	BUILD_PARAMS="KERN_DIR=/lib/modules/${KV_FULL}/build KERNOUT=${KV_OUT_DIR}"
	BUILD_TARGETS="build"
}

function ctarget() {
	CTARGET="${ARCH}"
	use amd64 && CTARGET='x86_64'
	echo $CTARGET
}

src_configure() {
	ARCH=$(ctarget) emake config \
		T=$(ctarget)-native-linuxapp-$(tc-get-compiler-type)
}

src_compile() {
	RTE_SDK="${S}" RTE_TARGET="build" RTE_OUTPUT="/usr" \
		MODULE_CFLAGS="-I/usr/include" linux-mod_src_compile
}

src_install() {
	echo "INSTALLING...."
	linux-mod_src_install
}

pkg_postinst() {
	linux-mod_pkg_postinst
}
