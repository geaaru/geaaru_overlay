# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit autotools systemd

DESCRIPTION="A strong & robust keepalive facility to the Linux Virtual Server project"
HOMEPAGE="https://www.keepalived.org/"
SRC_URI="https://github.com/acassen/keepalived/tarball/c636903943fd02b8fc702685e030ed6769435be8 -> keepalived-2.3.1-c636903.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="*"
IUSE="+bfd dbus json regex snmp systemd"

RDEPEND="
	dev-libs/libnl:=
	dev-libs/openssl:=
	dev-libs/popt
	net-libs/libnfnetlink
	sys-apps/iproute2
	regex? ( dev-libs/libpcre2 )
	dbus? (
		sys-apps/dbus
		dev-libs/glib:2
	)
	json? ( dev-libs/json-c )
	snmp? ( net-analyzer/net-snmp )
	systemd? ( sys-apps/systemd )"
DEPEND="${RDEPEND}
	>=sys-kernel/linux-headers-4.4"

DOCS=(
	README CONTRIBUTORS INSTALL ChangeLog AUTHOR TODO
	doc/keepalived.conf.SYNOPSIS doc/NOTE_vrrp_vmac.txt
)

post_src_unpack() {
	mv acassen-${PN}-* ${S} || die "Error on rename unpacked dir"
}

src_prepare() {
	default
	eautoreconf
}

src_configure() {
	# keepalived has support to dynamically use some libraries instead of
	# linking them:
	#--enable-dynamic-linking \
	#--enable-libiptc-dynamic \
	#--enable-libnl-dynamic \
	#--enable-libxtables-dynamic \
	econf \
		--with-init="$(usex systemd systemd custom)" \
		--with-kernel-dir="${ESYSROOT}"/usr \
		--enable-vrrp \
		$(use_enable bfd) \
		$(use_enable dbus) \
		$(use_enable json) \
		$(use_enable regex) \
		$(use_enable snmp) \
		$(use_enable snmp snmp-rfc) \
		$(use_enable systemd)
}

src_install() {
	default

	newconfd "${FILESDIR}"/keepalived.confd keepalived

	if use systemd ; then
		systemd_newunit "${FILESDIR}"/${PN}.service ${PN}.service
		systemd_install_serviced "${FILESDIR}/${PN}.service.conf"
	else
		newinitd "${FILESDIR}"/keepalived.initd keepalived
	fi

	use snmp && dodoc doc/*MIB.txt

	# This was badly named by upstream, it's more HOWTO than anything else.
	newdoc INSTALL INSTALL+HOWTO

	# Clean up sysvinit files
	rm -rv "${ED}"/etc/sysconfig || die
}

# vim: filetype=ebuild