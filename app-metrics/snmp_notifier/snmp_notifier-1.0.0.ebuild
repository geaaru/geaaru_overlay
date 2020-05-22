# Copyright 2018 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

EGO_PN="github.com/maxwo/${PN}"
S="${WORKDIR}/${P}.linux-amd64"

#inherit golang-vcs-snapshot git-r3 golang-build systemd user
inherit systemd user

DESCRIPTION="A webhook to relay Prometheus alerts as SNMP traps"
HOMEPAGE="https://github.com/maxwo/snmp_notifier"
LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

SRC_URI="https://${EGO_PN}/releases/download/v${PV}/${P}.linux-amd64.tar.gz"

DEPEND=""
RDEPEND=""
BDEPEND="${DEPEND}"

pkg_setup() {
	enewgroup ${PN}
	enewuser ${PN} -1 -1 -1
}

src_install() {
	dodoc LICENSE
	dobin ${PN}

	dodir /etc/${PN}
	insinto /etc/${PN}
	doins ${S}/description-template.tpl

	systemd_dounit "${FILESDIR}"/${PN}.service
}
