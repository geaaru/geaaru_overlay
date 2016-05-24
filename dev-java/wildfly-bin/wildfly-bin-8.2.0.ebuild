# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit eutils user systemd

MY_PV="${PV}.Final"

DESCRIPTION="Wildfly Application Server"
HOMEPAGE="http://wildfly.org"
SRC_URI="http://download.jboss.org/wildfly/${MY_PV}/wildfly-${MY_PV}.tar.gz"
LICENSE="GPL 2.1"
SLOT="8"
KEYWORDS="~amd64 ~x86"

IUSE="doc"

RDEPEND=">=virtual/jre-1.7"
DEPEND=">=virtual/jdk-1.7
	app-arch/unzip
"

S="${WORKDIR}/${PN/-bin/}-${MY_PV}"

pkg_setup() {
	ebegin "Creating jboss group and user"
	enewgroup jboss
	enewuser jboss -1 -1 /var/lib/jboss jboss
	eend ${?}
}

src_install() {
	INSTDIR="opt/${PF}"

	dodir ${INSTDIR}

	for dir in appclient domain modules standalone ; do
		cp -r ${dir} ${D}${INSTDIR}/
	done

	for f in bin/*.properties ; do
		insinto ${INSTDIR}/bin
		doins ${f}
	done

	for f in bin/*.sh ; do
		exeinto ${INSTDIR}/bin
	    doexe ${f}
	done

	dodir ${INSTDIR}/bin/client
	cp -r bin/client ${D}${INSTDIR}/bin

	for f in jboss-modules.jar README.txt ; do
		insinto ${INSTDIR}/
		doins ${f}
	done

	dodoc LICENSE.txt copyright.txt

	use doc && cp -r docs/ ${D}${INSTDIR}/

	dodir /var/log/wildfly

	#fowners jboss:jboss /var/log/wildfly

}


