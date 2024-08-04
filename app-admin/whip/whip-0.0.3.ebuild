# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Macaroni OS Whip tool"
HOMEPAGE="https://github.com/macaroni-os/whip"
SRC_URI="https://github.com/macaroni-os/whip/tarball/14f38f78f3b0e75cab85295b29421a790cd6b506 -> whip-0.0.3-14f38f7.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="*"

DEPEND="dev-lang/go"

post_src_unpack() {
	mv macaroni-os-${PN}-* ${S}
}

src_compile() {
	golang_ldflags=(
		"-X \"github.com/macaroni-os/whip/pkg/converter.BuildTime=$(date -u '+%Y-%m-%d %I:%M:%S %Z')\""
		"-X github.com/macaroni-os/whip/pkg/converter.BuildCommit=14f38f78f3b0e75cab85295b29421a790cd6b506"
	)

	CGO_ENABLED=0 go build \
		-ldflags "${golang_ldflags[*]}" \
		-o ${PN} -v -x -mod=vendor . || die
}

src_install() {
	dobin "${PN}"
	dodoc README.md

	insinto /etc
	doins "${FILESDIR}"/whip.yml
}

# vim: filetype=ebuild