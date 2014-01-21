# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/net-firewall/iptables/iptables-1.4.20.ebuild,v 1.12 2014/01/18 19:48:53 ago Exp $

EAPI="5"

# Force users doing their own patches to install their own tools
AUTOTOOLS_AUTO_DEPEND=no

inherit eutils multilib toolchain-funcs autotools

DESCRIPTION="Linux kernel (3.13+) firewall, NAT and packet mangling tools"
HOMEPAGE="http://netfilter.org/projects/nftables/"
SRC_URI="http://netfilter.org/projects/nftables/files/${P}.tar.bz2"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~arm ~arm64 ~hppa ~ia64 ~m68k ~mips ~ppc ~ppc64 ~s390 ~sh ~sparc ~x86"
IUSE="static-libs"

RDEPEND="
	( >=net-libs/libnftnl-1.0.0-r2 )
"
DEPEND="${RDEPEND}
	virtual/os-headers
	virtual/pkgconfig
"

pkg_setup() {
	if kernel_is ge 3 13; then
		CONFIG_CHECK="~NF_TABLES"
		linux-info_pkg_setup
	else
		eerror "This package requires kernel version 3.13 or newer to work properly."
	fi
}

src_prepare() {

	epatch ${FILESDIR}/nftnl_fixname_${PV}.patch

	# Only run autotools if user patched something
	epatch_user && eautoreconf || elibtoolize
}

src_configure() {

	econf \
		$(use_enable static-libs static) \
		--sbindir="${EPREFIX}/sbin"
}

src_compile() {
	emake V=1
}

