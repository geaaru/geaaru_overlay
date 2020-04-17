# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Copyright (C) 2009 - Ge@@ru
# $Header: $

DESCRIPTION="OCILib opensource Library"
HOMEPAGE="http://orclib.sourceforge.net"
SRC_URI="https://github.com/vrogier/ocilib/releases/download/v${PV}/${P}-gnu.tar.gz"

RESTRICT="nomirror"

LICENSE="GPL-2.1"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="dev-db/oracle-instantclient-basic"
RDEPEND="dev-db/oracle-instantclient-basic"

src_compile() {
	local myconf="${myconf} "
	local oracle_version=$(best_version dev-db/oracle-instantclient-basic \
						   | sed -e 's/dev-db\/oracle-instantclient-basic-//')
	# Drop revision
	oracle_version=${oracle_version/-r*/}

	einfo "Use oracle version ${oracle_version}"

	myconf="${myconf} --enable-shared"

	myconf="${myconf} \
			--with-oracle-headers-path=/usr/lib64/oracle/${oracle_version}/client/include"
	myconf="${myconf} \
			--with-oracle-lib-path=/usr/lib64/oracle/${oracle_version}/client/lib64"

	myconf="${myconf} \
			--with-oracle-home=/usr/lib64/oracle/${oracle_version}/client/"

	econf ${myconf} || die
	emake || die
}

src_install() {
	make install DESTDIR="${D}" || die "install failed"
}

