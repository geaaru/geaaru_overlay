# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Macaroni OS Anise System Users/Groups Manager"
HOMEPAGE="https://github.com/geaaru/entities"
SRC_URI="https://github.com/geaaru/entities/tarball/99abd77f3780e8a2abd60e9705ade630419529a5 -> entities-0.9.2-99abd77.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="*"

DEPEND="dev-lang/go"

post_src_unpack() {
	mv geaaru-${PN}-* ${S}
}

src_compile() {
	golang_ldflags=(
		"-X \"github.com/geaaru/entities/pkg/converter.BuildTime=$(date -u '+%Y-%m-%d %I:%M:%S %Z')\""
		"-X github.com/geaaru/entities/pkg/converter.BuildCommit=99abd77f3780e8a2abd60e9705ade630419529a5"
		"-X github.com/geaaru/entities/pkg/config.BuildGoVersion=$(go env GOVERSION)"
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