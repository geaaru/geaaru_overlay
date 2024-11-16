# Distributed under the terms of the GNU General Public License v2

EAPI=6

DESCRIPTION="Random password generator"
HOMEPAGE="https://packages.debian.org/stable/admin/makepasswd"
SRC_URI="http://ftp.debian.org/debian/pool/main/m/makepasswd/makepasswd_1.10.orig.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="*"
IUSE=""

RDEPEND="dev-lang/perl"

src_install() {
	dobin makepasswd
	doman makepasswd.1
	einstalldocs
}
