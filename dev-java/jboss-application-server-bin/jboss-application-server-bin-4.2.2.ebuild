# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit eutils

DESCRIPTION="JBoss Application Server"
HOMEPAGE="http://www.jboss.org/jbossas/"
SRC_URI="http://downloads.sourceforge.net/jboss/jboss-${PV}.GA.zip"

LICENSE=""
SLOT="4.2"
KEYWORDS="~amd64 ~x86"

IUSE="doc"

COMMON_DEP="!dev-java/jboss-application-server"

RDEPEND=">=virtual/jre-1.4
	${COMMON_DEP}"
DEPEND=">=virtual/jdk-1.4
	app-arch/unzip
	${COMMON_DEP}"

pkg_setup() {
	ebegin "Creating jboss group and user"
	enewgroup jboss
	enewuser jboss -1 -1 /dev/null jboss
	eend ${?}
}

src_unpack() {
	unpack ${A}
	cd ${WORKDIR}

	# rename to gentoo name
	mv jboss-${PV}.GA/ ${PF}
	cd ${S}
}

src_install() {
	INSTDIR="/opt"
	dodir /var/run/jboss /var/log/jboss /var/jboss
	insinto ${INSTDIR}/${PF}/bin ; newins bin/run.jar run.jar
	insinto ${INSTDIR}/${PF}/bin ; newins bin/shutdown.jar shutdown.jar
	insinto ${INSTDIR}/${PF}/bin ; newins bin/run.sh run.sh
	insinto ${INSTDIR}/${PF}/bin ; newins bin/shutdown.sh shutdown.sh
	insinto /usr/bin ; newins ${FILESDIR}/jboss_admin jboss_admin.tmp

	cp -r {client,lib,server} ${D}/${INSTDIR}/${PF}/
	use doc && cp -r ${S}/docs/ ${D}/${INSTDIR}/${PF}/

	sed -e "s:BASEDIR=\"\":BASEDIR=\"/opt/${PF}\":" \
		${D}/usr/bin/jboss_admin.tmp > ${D}/usr/bin/jboss_admin
	rm ${D}/usr/bin/jboss_admin.tmp
	chmod a+x ${D}/usr/bin/jboss_admin
}

pkg_preinst() {
	newconfd "${FILESDIR}"/jboss_conf.d jboss_server
	newinitd "${FILESDIR}"/jboss_server jboss_server
}

pkg_postinst() {
	chown -R jboss:jboss /var/run/jboss
	chown -R jboss:jboss /var/log/jboss
	einfo "${DESCRIPTION}-${PV} is been installed to ${INSTDIR}/${PF}"
	einfo "but server instances must be execute under /var/jboss/server"
	einfo "Use: jboss_admin -c"
	einfo "     To initialize /var/jboss directory without server data"
}

