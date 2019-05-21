# Copyright 2018 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

EGO_PN="github.com/golang/dep/..."
S="${WORKDIR}/${P}/src/${EGO_PN%/*}"

inherit golang-build golang-vcs-snapshot

DESCRIPTION="dep is a dependency management tool for Go"
HOMEPAGE="https://github.com/golang/dep"
SRC_URI="https://github.com/golang/dep/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

PATCHES=(
	${FILESDIR}/dep-0.5.3-fix-vcs-repo.patch
)

src_install() {
	GOPATH="${WORKDIR}/${P}:$(get_golibdir_gopath)" \
		go install -v -x ${EGO_BUILD_FLAGS} "${EGO_PN}"
	dobin ${WORKDIR}/${P}/bin/dep
}
