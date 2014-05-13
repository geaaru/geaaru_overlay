# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-db/oracle-instantclient-jdbc/oracle-instantclient-jdbc-10.2.0.3.ebuild,v 1.7 2008/06/18 22:35:16 wolf31o2 Exp $

inherit eutils

MY_P_x86="${PN/oracle-/}-linux-${PV}.0"
MY_P_amd64="${PN/oracle-/}-linux.x64-${PV}.0"

S=${WORKDIR}
DESCRIPTION="Oracle 12c client installation for Linux: JDBC supplement"
HOMEPAGE="http://www.oracle.com/technology/tech/oci/instantclient/index.html"
SRC_URI="amd64? ( ${MY_P_amd64}.zip )
		 x86? ( ${MY_P_x86}.zip )"

LICENSE="OTN"
SLOT="0"
KEYWORDS="-* amd64 x86"
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
	cd "${S}"/instantclient_12_1
	insinto /usr/$(get_libdir)/oracle/${PV}/client/lib
	doins libheteroxa12.so orai18n.jar
}

pkg_postinst() {
	elog "The JDBC supplement package for Oracle 10g has been installed."
	elog "You may wish to install the oracle-instantclient-sqlplus (for "
	elog "running the SQL*Plus application) package as well."
	elog
	elog "oracle-instantclient-* packages aren't installed in different"
	elog "SLOTs any longer. You may want to uninstall older versions."
}
