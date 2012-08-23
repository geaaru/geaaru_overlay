# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

DESCRIPTION="Create rpm/tgz/deb packages from source compiles"
HOMEPAGE="http:///www.asic-linux.com.mx/~izto/checkinstall/"

SRC_URI="http://www.asic-linux.com.mx/~izto/checkinstall/files/source/${P}.tar.gz"
LICENSE="GPL-2"
SLOT="0"

RDEPEND="app-arch/rpm
	 app-arch/dpkg
	 app-arch/pkgtools"
DEPEND="virtual/glibc"

KEYWORDS="~x86 ~amd64"
IUSE=""

src_compile() {

	emake PREFIX=/usr || die "compile problem"

}

src_install () {


 
