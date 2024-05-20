# Distributed under the terms of the GNU General Public License v2

EAPI=7
EGO_PN="github.com/derekparker/delve"

inherit golang-vcs-snapshot

DELVE_SHA="26799555e5518e8a9fe2d68e02379257ebda4dd2"
SRC_URI="
https://github.com/go-delve/delve/tarball/26799555e5518e8a9fe2d68e02379257ebda4dd2 -> delve-1.22.1-2679955.tar.gz
"
KEYWORDS="*"

DESCRIPTION="A source-level debugger for the Go programming language"
HOMEPAGE="https://github.com/derekparker/delve"

LICENSE="MIT"
SLOT="0"
IUSE=""
S=${WORKDIR}/${P}/src/${EGO_PN}

src_compile() {
	GOPATH="${WORKDIR}/${P}:$(get_golibdir_gopath)" go build \
		-ldflags="-X main.Build=${DELVE_SHA}" -o "bin/dlv" ./cmd/dlv || die
}

src_install() {
	dodoc README.md CHANGELOG.md
	dobin bin/dlv
}

# vim: filetype=ebuild