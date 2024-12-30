# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit unpacker xdg-utils tmpfiles systemd user

MY_PV=$(ver_rs 3 '-')

DESCRIPTION="NordVPN native client"
HOMEPAGE="https://nordvpn.com https://gitlab.com/lahouari.dc/nordvpn"
SRC_URI="https://repo.nordvpn.com/deb/nordvpn/debian/pool/main/n/nordvpn/nordvpn_${MY_PV}_amd64.deb"

LICENSE="NordVPN"
SLOT="0"
KEYWORDS="*"

# TODO: verify that list of RDEPEND is complete
RDEPEND="net-misc/networkmanager
		net-vpn/networkmanager-openvpn
		dev-libs/libxml2
		net-dns/libidn2
		app-misc/ca-certificates
		sys-process/procps
		net-firewall/iptables
		sys-apps/iproute2
		acct-group/nordvpn"


RESTRICT="strip"
S="${WORKDIR}"


pkg_setup() {
	enewgroup ${PN}
}

src_unpack() {
	# Unpack Debian package containing application's files
	unpack_deb ${A}
	gzip "${S}"/usr/share/doc/nordvpn/changelog.Debian.gz -d
	gzip "${S}"/usr/share/man/man1/nordvpn.1.gz -d
}

src_install() {
	cd "${S}"

#   doinitd>etc/init.d/nordvpn
	newinitd "${FILESDIR}/nordvpn.initd" ${PN}
#	doinitd etc/init.d/nordvpn
	systemd_dounit usr/lib/systemd/system/nordvpnd.{service,socket}
#	systemd_douserunit usr/lib/nordvpn/nordfileshared.{service,socket}


#   into<-->/usr
	dobin usr/bin/nordvpn
	dosbin usr/sbin/nordvpnd

	insinto /usr/lib/
	doins -r usr/lib/nordvpn

	fowners root:nordvpn /usr/lib/nordvpn/norduserd
	fperms 0550 /usr/lib/nordvpn/norduserd
	fowners root:nordvpn /usr/lib/nordvpn/nordfileshare
	fperms 0550 /usr/lib/nordvpn/nordfileshare
	fowners root:nordvpn /usr/lib/nordvpn/openvpn
	fperms 0550 /usr/lib/nordvpn/openvpn

	insinto /usr/share/
	doins -r usr/share/applications
	doins -r usr/share/zsh
	doins -r usr/share/bash-completion
	doins -r usr/share/icons

	insinto /var/lib/
	doins -r var/lib/nordvpn

	dodoc usr/share/doc/nordvpn/changelog.Debian
	doman usr/share/man/man1/nordvpn.1

	dotmpfiles usr/lib/tmpfiles.d/nordvpn.conf

	newenvd "${FILESDIR}"/nordvpn.env 99nordvpn 
}

pkg_postinst (){
	xdg_desktop_database_update
	xdg_icon_cache_update
	tmpfiles_process nordvpn.conf
}

pkg_postrm (){
	xdg_desktop_database_update
	xdg_icon_cache_update
}
