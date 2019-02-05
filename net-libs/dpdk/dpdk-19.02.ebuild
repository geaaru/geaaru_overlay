# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit flag-o-matic meson

DESCRIPTION="A set of libraries and drivers for fast packet processing"
HOMEPAGE="http://dpdk.org/"
SRC_URI="http://fast.${PN}.org/rel/${P}.tar.xz"

LICENSE="BSD-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="doc libressl static-libs debug mlx4 mlx5 ibverbs tests"

DEPEND="
	sys-process/numactl
	mlx4?  ( sys-fabric/libmlx4 )
	mlx5? ( sys-fabric/libmlx5 )
	ibverbs? ( sys-fabric/libibverbs )
	!libressl? ( dev-libs/openssl:0= )
	libressl? ( dev-libs/libressl:0= )
"
RDEPEND="${DEPEND}"
DEPEND="
	${DEPEND}
	dev-lang/nasm
	doc? ( dev-python/sphinx )
"

if [ "$SLOT" != "0" ] ; then
	S=${WdORKDIR}/${PN}-${SLOT#0/}-${PV}
fi

src_configure() {
	local emesonargs=(
		-Denable_kmods=false
	)

	use debug && emesonargs+=( --buildtype=debug )
	use doc && emesonargs+=( -Denable_docs=true )
	if use tests ; then
		emesonargs+=( -Dtests=true )
	else
		emesonargs+=( -Dtests=false )
	fi
	meson_src_configure
}
