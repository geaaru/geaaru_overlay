# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="4"

inherit eutils linux-info toolchain-funcs flag-o-matic

DESCRIPTION="Open Source implementation of IPsec for the Linux operating system (Openswan fork)."
HOMEPAGE="http://www.libreswan.org/"
SRC_URI="https://download.libreswan.org/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 ~ppc ~sparc x86"
IUSE="caps curl ldap pam ssl extra-algorithms weak-algorithms nocrypto-algorithms ms-bad-proposal nss"

RESTRICT="test" # requires user mode linux setup

COMMON_DEPEND="!net-misc/strongswan
	!net-misc/openswan
	dev-libs/gmp
	dev-lang/perl
	net-dns/unbound
	caps? ( sys-libs/libcap-ng )
	curl? ( net-misc/curl )
	ldap? ( net-nds/openldap )
	nss? ( dev-libs/nss )
	ssl? ( dev-libs/openssl )"
DEPEND="${COMMON_DEPEND}
	virtual/linux-sources
	app-text/xmlto
	app-text/docbook-xml-dtd:4.1.2" # see bug 237132
RDEPEND="${COMMON_DEPEND}
	|| ( sys-apps/net-tools[old-output] <sys-apps/net-tools-1.60_p201111202031570500 )
	virtual/logger
	sys-apps/iproute2"

pkg_setup() {
	if use nocrypto-algorithms && ! use weak-algorithms; then
		ewarn "Enabling nocrypto-algorithms USE flag has no effect when"
		ewarn "weak-algorithms USE flag is disabled"
	fi

	linux-info_pkg_setup

	# most code is OK, but programs/pluto code breaks strict aliasing
	append-cflags -fno-strict-aliasing
}

src_prepare() {
	epatch "${FILESDIR}"/${P}-gentoo.patch

	find . -type f -regex '.*[.]\([1-8]\|html\|xml\)' -exec sed -i \
	    -e s:/usr/local:/usr:g '{}' \; ||
	    die "failed to replace text in docs"
}

usetf() { usex $1 true false ; }
get_make_options() {
	make_options=(
		KERNELSRC="${KERNEL_DIR}"
		FINALEXAMPLECONFDIR=/usr/share/doc/${PF}
		INC_RCDEFAULT=/etc/init.d
		INC_USRLOCAL=/usr
		INC_MANDIR=share/man
		FINALDOCDIR=/usr/share/doc/${PF}/html
		FINALLIBDIR=/usr/$(get_libdir)/ipsec
		DESTDIR="${D}"
		USERCOMPILE="${CFLAGS}"
		USERLINK="-Wl,-z,relro ${LDFLAGS}"
		CC="$(tc-getCC)"
		# Disable (to avoid use of unbound module)
		USE_DNSSEC=false
		USE_LIBCAP_NG=$(usetf caps)
		USE_LIBCURL=$(usetf curl)
		USE_LDAP=$(usetf ldap)
		USE_XAUTH=true
		USE_XAUTHPAM=$(usetf pam)
		USE_LIBNSS=$(usetf nss)
		HAVE_OPENSSL=$(usetf ssl)
		USE_EXTRACRYPTO=$(usetf extra-algorithms)
		USE_WEAKSTUFF=$(usetf weak-algorithms)
	)

	if use weak-algorithms && use nocrypto-algorithms ; then
		make_options+=( USE_NOCRYPTO=true )
	fi

	make_options+=( USE_LWRES=false ) # needs bind9 with lwres support
	if use curl || use ldap || use pam; then
		make_options+=( HAVE_THREADS=true )
	else
		make_options+=( HAVE_THREADS=false )
	fi
}

src_compile() {
	local make_options; get_make_options
	emake "${make_options[@]}" ${MYMAKE}
}

src_install() {
	local make_options; get_make_options
	MAKEOPTS="-j1"
	emake "${make_options[@]}" programs install

	dodoc CHANGES README
	dodoc docs/{KNOWN_BUGS*,PATENTS*,debugging*}
	docinto quickstarts
	dodoc docs/quickstarts/*

	insinto /usr/share/doc/${PF}
	doins -r contrib
	docompress -x /usr/share/doc/${PF}/contrib

	newinitd "${FILESDIR}"/ipsec-initd ipsec

	# We don't need to install /var/run/pluto.
	rm -rf "${D}var" || die
}

pkg_postinst() {
	if kernel_is -ge 2 6; then
		CONFIG_CHECK="~NET_KEY ~INET_XFRM_MODE_TRANSPORT ~INET_XFRM_MODE_TUNNEL ~INET_AH ~INET_ESP ~INET_IPCOMP"
		WARNING_INET_AH="CONFIG_INET_AH:\tmissing IPsec AH support (needed if you want only authentication)"
		WARNING_INET_ESP="CONFIG_INET_ESP:\tmissing IPsec ESP support (needed if you want authentication and encryption)"
		WARNING_INET_IPCOMP="CONFIG_INET_IPCOMP:\tmissing IPsec Payload Compression (required for compress=yes)"
		check_extra_config
	fi
}
