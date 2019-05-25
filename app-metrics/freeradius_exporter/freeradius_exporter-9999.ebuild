# Copyright 2018 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

EGO_PN="github.com/bvantagelimited/${PN}"
S="${WORKDIR}/${P}/src/${EGO_PN}"

inherit golang-vcs golang-build systemd user

DESCRIPTION="FreeRADIUS Prometheus Exporter"
HOMEPAGE="https://github.com/bvantagelimited/freeradius_exporter"
RETRICT="network-sandbox"
LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="dev-go/dep"
RDEPEND="${DEPEND}"
BDEPEND=""

pkg_setup() {
	enewgroup radius
	enewuser radius -1 -1 /var/log/radius radius
}

src_prepare() {
	eapply_user

	GOPATH="${WORKDIR}/${P}:$(get_golibdir_gopath)" \
		dep init || die "Error on dep init"
	GOPATH="${WORKDIR}/${P}:$(get_golibdir_gopath)" \
		dep ensure || die "Error on dep ensure"
}

src_compile() {
	GOPATH="${WORKDIR}/${P}:$(get_golibdir_gopath)" \
		go install -v -x ${EGO_BUILD_FLAGS} "${EGO_PN}" ./... || die "Error on go install"
}

src_install() {
	dobin ${WORKDIR}/${P}/bin/freeradius_exporter

	systemd_dounit "${FILESDIR}"/freeradius_exporter.service
}
