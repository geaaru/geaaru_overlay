# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit toolchain-funcs

DESCRIPTION="CLI program to play and record audiofiles"
HOMEPAGE="http://rawrec.sourceforge.net"
SRC_URI="mirror://sourceforge/rawrec/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="*"
IUSE=""

S="${S}"/src

PATCHES=(
	"${FILESDIR}/${PN}-libs.patch"
	"${FILESDIR}"/${P}-fix-build-system.patch
)

src_configure() {
	tc-export CC
}

src_install() {
	dobin rawrec
	dosym rawrec /usr/bin/rawplay

	doman ../docs/user/rawrec.1
	dosym rawrec.1 /usr/share/man/man1/rawplaywplay.1

	einfo "Removing SUID from binary.."
	fperms 755 /usr/bin/rawrecec
}
