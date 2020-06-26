# Copyright 2018 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit systemd user

DESCRIPTION="FreeRADIUS Prometheus Exporter"
HOMEPAGE="https://github.com/bvantagelimited/freeradius_exporter"
SRC_URI="https://github.com/bvantagelimited/${PN}/releases/download/${PV}/${P}-amd64.tar.gz"
LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND=""
BDEPEND="${DEPEND}"

S="${WORKDIR}/${P}-amd64"

pkg_setup() {
	enewgroup radius
	enewuser radius -1 -1 /var/log/radius radius
}

src_prepare() {
	eapply_user
}

src_install() {
	dobin ${S}/freeradius_exporter
	dodoc ${S}/README.md

	systemd_dounit "${FILESDIR}"/freeradius_exporter.service
}
