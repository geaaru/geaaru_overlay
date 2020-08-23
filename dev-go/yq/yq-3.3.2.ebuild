# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

EGO_PN="github.com/mikefarah/${PN}/..."
S="${WORKDIR}/${P}/src/${EGO_PN%/*}"

inherit golang-vcs-snapshot git-r3

DESCRIPTION="yq is a portable command-line YAML processor"
HOMEPAGE="https://github.com/mikefarah/yq"

EGIT_REPO_URI="https://github.com/mikefarah/yq.git"
EGIT_COMMIT="${PV}"
EGIT_CHECKOUT_DIR="${S}"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm ~arm64"
IUSE=""

DEPEND=""
RDEPEND="!app-misc/yq"
src_prepare() {
	GOPATH="${WORKDIR}/${P}:$(get_golibdir_gopath)" \
		GO111MODULE="on" go mod vendor

	eapply_user
}

src_compile() {
	GOPATH="${WORKDIR}/${P}:$(get_golibdir_gopath)" \
		go build -v -x ${EGO_BUILD_FLAGS} "${EGO_PN}" ./...

	# Fix permission of go mod cache
	#chmod u+rw -R ${S}/pkg/mod
}

src_install() {
	GOPATH="${WORKDIR}/${P}:$(get_golibdir_gopath)" \
		go install -v -x ${EGO_BUILD_FLAGS} "${EGO_PN}"
	dobin ${WORKDIR}/${P}/bin/yq
}
