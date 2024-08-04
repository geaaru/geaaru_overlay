# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Macaroni OS Knife"
HOMEPAGE="https://github.com/macaroni-os/macaronictl"
SRC_URI="https://github.com/macaroni-os/macaronictl/tarball/395adeae819ca9e1342f76c2c7f62d2afa64de0f -> macaronictl-0.10.0-395adea.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="*"

DEPEND="dev-lang/go"

post_src_unpack() {
	mv macaroni-os-${PN}-* ${S}
}

src_compile() {
	golang_ldflags=(
		"-X \"github.com/macaroni-os/macaronictl/pkg/converter.BuildTime=$(date -u '+%Y-%m-%d %I:%M:%S %Z')\""
		"-X github.com/macaroni-os/macaronictl/pkg/converter.BuildCommit=395adeae819ca9e1342f76c2c7f62d2afa64de0f"
	)

	CGO_ENABLED=0 go build \
		-ldflags "${golang_ldflags[*]}" \
		-o ${PN} -v -x -mod=vendor . || die
}

src_install() {
	dobin "${PN}"
	dodoc README.md
}

# vim: filetype=ebuild