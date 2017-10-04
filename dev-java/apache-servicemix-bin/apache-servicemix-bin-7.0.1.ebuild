# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6

inherit eutils user systemd

DESCRIPTION="Apache ServiceMix is a flexible, open-source integration container
that unifies the features and functionality of Apache ActiveMQ, Camel, CXF,
and Karaf into a powerful runtime platform you can use to build your own
integrations solutions. It provides a complete, enterprise ready ESB
exclusively powered by OSGi."
HOMEPAGE="http://servicemix.apache.org/"
SRC_URI="http://apache.panu.it/servicemix/servicemix-7/${PV}/apache-servicemix-${PV}.zip"
RESTRICT=primaryuri
LICENSE="Apache License v2.0"
SLOT="7.0"
KEYWORDS="~amd64 ~x86"

IUSE=""

COMMON_DEP=""

RDEPEND=">=virtual/jre-1.8
  ${COMMON_DEP}"
DEPEND=">=virtual/jdk-1.8
  app-arch/unzip
  ${COMMON_DEP}"

pkg_setup() {
	ebegin "Creating smx group and user"
	enewgroup smx
	enewuser smx -1 -1 /var/lib/smx smx
	eend ${?}
}

src_unpack() {
	unpack ${A}
	cd ${WORKDIR}

	mv apache-servicemix-${PV}/ ${PF}
	cd ${S}
}

src_configure() {

	# Change path to logfile
	sed -i -e \
		's/log4j.appender.out.file=.*/log4j.appender.out.file=\/var\/log\/smx\/servicemix.log/g' \
		etc/org.ops4j.pax.logging.cfg
}

src_install() {

	INSTDIR="/opt"

	dodir /var/log/smx/

	exeinto ${INSTDIR}/${PF}/bin
	newexe bin/client "client"
	newexe bin/instance "instance"
	newexe bin/karaf "karaf"
	newexe bin/servicemix "servicemix"
	newexe bin/setenv "setenv"
	newexe bin/shell "shell"
	newexe bin/status "status"
	newexe ${FILESDIR}/karaf_linux-6.1.sh "karaf_linux.sh"

	insinto /etc/default/
	newins ${FILESDIR}/servicemix.conf "smx-7.0.conf"

	# Fix conffile path
	sed -i -e 's/conffile=.*/conffile=\/etc\/default\/smx-7.0.conf/g' \
		${D}/${INSTDIR}/${PF}/bin/karaf_linux.sh

	for dir in data deploy etc lib licenses system ; do
		cp -r ${S}/${dir} ${D}/${INSTDIR}/${PF}/${dir}/
		
	done

	# Systemd files
	systemd_newunit "${FILESDIR}"/smx-6.1.service smx-7.0.service
	systemd_install_serviced "${FILESDIR}"/servicemix.service.conf "smx-7.0.service"

	dodoc LICENSE NOTICE README RELEASE-NOTES

	fowners smx:smx /etc/default/smx-7.0.conf /var/log/smx/
	fowners smx:smx -R ${INSTDIR}/${PF}

	einfo "Configure /etc/default/smx-7.0.conf before start service."
}

