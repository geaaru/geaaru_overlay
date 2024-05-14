# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="OCILib opensource Library"
HOMEPAGE="http://orclib.sourceforge.net"
SRC_URI="https://github.com/vrogier/ocilib/releases/download/v4.6.0/ocilib-4.6.0-gnu.tar.gz -> ocilib-4.6.0-gnu.tar.gz"

RESTRICT="nomirror"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="dev-db/oracle-instantclient-basic"
RDEPEND="dev-db/oracle-instantclient-basic"

PATCHES=(
)

src_compile() {
	local myconf="${myconf} "
	local oracle_version=$(best_version dev-db/oracle-instantclient-basic \
						   | sed -e 's/dev-db\/oracle-instantclient-basic-//')

	einfo "Use oracle version ${oracle_version}"

	myconf="${myconf} --enable-shared"

	myconf="${myconf} \
			--with-oracle-headers-path=/usr/lib64/oracle/${oracle_version}/client/include"
	myconf="${myconf} \
			--with-oracle-lib-path=/usr/lib64/oracle/${oracle_version}/client/lib"

	myconf="${myconf} \
			--with-oracle-home=/usr/lib64/oracle/${oracle_version}/client/"

	econf ${myconf} || die
	emake || die
}

src_install() {
	make install DESTDIR="${D}" || die "install failed"
}

# vim: filetype=ebuild