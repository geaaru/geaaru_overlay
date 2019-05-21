# Copyright 2018 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

EGO_PN="github.com/lxc/${PN}/..."
S="${WORKDIR}/${P}/src/${EGO_PN%/*}"

inherit golang-vcs-snapshot git-r3

DESCRIPTION="System container image builder for LXC and LXD"
HOMEPAGE="https://github.com/lxc/distrobuilder"

EGIT_REPO_URI="https://github.com/geaaru/distrobuilder.git"
EGIT_COMMIT="v20190521"
EGIT_CHECKOUT_DIR="${S}"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND=""

src_compile() {
	GOPATH="${WORKDIR}/${P}:$(get_golibdir_gopath)" \
		go build -v -x ${EGO_BUILD_FLAGS} "${EGO_PN}" ./...
}

src_install() {
	GOPATH="${WORKDIR}/${P}:$(get_golibdir_gopath)" \
		go install -v -x ${EGO_BUILD_FLAGS} "${EGO_PN}"
	dobin ${WORKDIR}/${P}/bin/distrobuilder

	dodir /usr/share/distrobuilder/examples/
	for f in ${S}/doc/examples/* ; do
		insinto /usr/share/distrobuilder/examples
		doins ${f}
	done
}
