# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Macaroni OS Anise Portage Converter"
HOMEPAGE="https://github.com/macaroni-os/anise-portage-converter"
SRC_URI="https://github.com/macaroni-os/anise-portage-converter/tarball/9ba5319f11cdebc6fa9284921e15ddd856fbf004 -> anise-portage-converter-0.14.4-9ba5319.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="*"

DEPEND="dev-lang/go"

post_src_unpack() {
	mv macaroni-os-${PN}-* ${S}
}

src_compile() {
	anise_ldflags=(
		"-X \"github.com/macaroni-os/anise-portage-converter/pkg/converter.BuildTime=$(date -u '+%Y-%m-%d %I:%M:%S %Z')\""
		"-X github.com/macaroni-os/anise-portage-converter/pkg/converter.BuildCommit=9ba5319f11cdebc6fa9284921e15ddd856fbf004"
	)

	CGO_ENABLED=0 go build \
		-ldflags "${anise_ldflags[*]}" \
		-o ${PN} -v -x -mod=vendor . || die
}

src_install() {
	dobin "${PN}"
	dodoc README.md
}

# vim: filetype=ebuild