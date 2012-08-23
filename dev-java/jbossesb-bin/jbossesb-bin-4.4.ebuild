# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit eutils

DESCRIPTION="JBoss Enterprice Service Bus (binary version)"
HOMEPAGE="http://www.jboss.org/jbossesb/"
SRC_URI="http://www.jboss.org/downloading/?projectId=jbossesb&url=/jbossesb/downloads/${PV}.GA/binary/jbossesb-${PV}.GA.zip"
LICENSE=""
SLOT="4"
KEYWORDS="~amd64 ~x86"

IUSE="doc javadocs samples"

COMMON_DEP="!dev-java/jbossesb"

RDEPEND=">=virtual/jre-1.4
		${COMMON_DEP}"

DEPEND=">=virtual/jdk-1.4
		app-arch/unzip
		${COMMON_DEP}
		|| ( dev-java/jboss-application-server dev-java/jboss-application-server-bin )"

src_unpack() {
	unpack ${A}

	cd ${WORKDIR}

	# rename to gentoo name
	mv jbossesb-${PV}.GA/ ${PF}
	cd ${S}
}

src_install() {
	INSTDIR="/opt"

	mkdir -p ${D}/${INSTDIR}/${PF}/lib
	cd ${S}/lib
	cp -r {jbossesb.sar,jbossesb.esb,jbpm.esb,jbrules.esb,smooks.esb} \
		${D}/${INSTDIR}/${PF}/lib/
	cp -r {spring.esb,soap.esb,slsb.esb,soapui-client.sar} \
		${D}/${INSTDIR}/${PF}/lib/
	cp h2-1.0.68.jar ${D}/${INSTDIR}/${PF}/lib/

	use doc && cp -r ${S}/docs/ ${D}/${INSTDIR}/${PF}/
	use javadocs && cp -r ${S}/javadocs/ ${D}/${INSTDIR}/${PF}/
	use samples && cp -r ${S}/samples/ ${D}/${INSTDIR}/${PF}/
	cp -r ${S}/tools/ ${D}/${INSTDIR}/${PF}/
}

pkg_postinst() {
	einfo "jbossesb-bin-${PV} is been installed to ${INSTDIR}/${PF}."
	einfo "You can now install ESB module to your jboss server directory."
	einfo "For example with jboss_admin."
}

