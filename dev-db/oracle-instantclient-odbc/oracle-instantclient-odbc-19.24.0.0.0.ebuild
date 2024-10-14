# Distributed under the terms of the GNU General Public License v2

inherit eutils

MY_P_x86="${P}-1.i386"
MY_P_amd64="${PN/oracle-/}-linux.x64-${PV}dbru"

DESCRIPTION="Oracle 19c client installation ODBC supplement"
HOMEPAGE="http://www.oracle.com/technology/tech/oci/instantclient/index.html"
#x86? ( ${MY_P_x86}.zip )"
SRC_URI="amd64? ( ${MY_P_amd64}.zip )"

LICENSE="OTN"
SLOT="0"
KEYWORDS="-* amd64"
RESTRICT="fetch"
IUSE=""

DEPEND="app-arch/unzip"
RDEPEND="dev-db/oracle-instantclient-basic"

S="${WORKDIR}"

pkg_setup() {
	MY_P=MY_P_${ARCH}
	export MY_P=${!MY_P}
}

pkg_nofetch() {
	eerror "Please go to:"
	eerror "  ${HOMEPAGE}"
	eerror "select your platform and download the"
	eerror "ODBC supplement, which is:"
	eerror "  ${MY_P}.zip"
	eerror "Then after downloading put it in:"
	eerror "  ${DISTDIR}"
}

src_unpack() {
	unzip "${DISTDIR}"/${MY_P}.zip || die "unsuccesful unzip ${MY_P}.zip"
}

src_install() {
	# library
	dodir /usr/$(get_libdir)/oracle/${PV}/client/lib
	cd "${S}"/instantclient_19_21
	insinto /usr/$(get_libdir)/oracle/${PV}/client/lib
	doins *.so.19.1

	# fixes symlinks
	dosym /usr/$(get_libdir)/oracle/${PV}/client/lib/libsqora.so.19.1 /usr/$(get_libdir)/oracle/${PV}/client/lib/libsqora.so

	# odbc_update_ini.sh
	dodir /usr/$(get_libdir)/oracle/${PV}/client/bin
	cd "${S}"/instantclient_19_21
	exeinto /usr/$(get_libdir)/oracle/${PV}/client/bin
	doexe odbc_update_ini.sh

	# documentation
	dodoc *htm*
}
