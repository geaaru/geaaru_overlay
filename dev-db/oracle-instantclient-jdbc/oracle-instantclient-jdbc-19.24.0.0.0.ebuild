# Distributed under the terms of the GNU General Public License v2

inherit eutils

MY_P_x86="${PN/oracle-/}-linux-${PV}dbru"
MY_P_amd64="${PN/oracle-/}-linux.x64-${PV}dbru"

S=${WORKDIR}
DESCRIPTION="Oracle 12c client installation for Linux: JDBC supplement"
HOMEPAGE="http://www.oracle.com/technology/tech/oci/instantclient/index.html"
# x86? ( ${MY_P_x86}.zip )"
SRC_URI="amd64? ( ${MY_P_amd64}.zip )"

LICENSE="OTN"
SLOT="0"
KEYWORDS="-* amd64"
RESTRICT="fetch"
IUSE=""

RDEPEND=">=dev-db/oracle-instantclient-basic-${PV}"
DEPEND="${RDEPEND}
	app-arch/unzip"

pkg_setup() {
	MY_P=MY_P_${ARCH}
	export MY_P=${!MY_P}
}

pkg_nofetch() {
	eerror "Please go to:"
	eerror "  ${HOMEPAGE}"
	eerror "and download the JDBC supplemental package.  Put it in:"
	eerror "  ${DISTDIR}"
	eerror "after downloading it."
}

src_unpack() {
	unzip "${DISTDIR}"/${MY_P}.zip
}

src_install() {
	dodir /usr/$(get_libdir)/oracle/${PV}/client/lib
	cd "${S}"/instantclient_19_21
	insinto /usr/$(get_libdir)/oracle/${PV}/client/lib
	doins libheteroxa19.so orai18n.jar
}

pkg_postinst() {
	elog "The JDBC supplement package for Oracle 10g has been installed."
	elog "You may wish to install the oracle-instantclient-sqlplus (for "
	elog "running the SQL*Plus application) package as well."
	elog
	elog "oracle-instantclient-* packages aren't installed in different"
	elog "SLOTs any longer. You may want to uninstall older versions."
}
