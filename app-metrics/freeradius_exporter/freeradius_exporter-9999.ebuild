# Copyright 2018 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

EGO_PN="github.com/bvantagelimited/freeardius_exporter/..."
S="${WORKDIR}/${P}/src/${EGO_PN}"

inherit golang-build golang-vcs

DESCRIPTION="FreeRADIUS Prometheus Exporter"
HOMEPAGE="https://github.com/bvantagelimited/freeradius_exporter"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

src_install() {
	GOPATH="${WORKDIR}/${P}:$(get_golibdir_gopath)" \
		go install -v -x ${EGO_BUILD_FLAGS} "${EGO_PN}"
	dobin ${WORKDIR}/${P}/freeradius_exporter
}
