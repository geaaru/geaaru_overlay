# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit eutils user systemd

DESCRIPTION="Apache ServiceMix is a flexible, open-source integration container
that unifies the features and functionality of Apache ActiveMQ, Camel, CXF,
and Karaf into a powerful runtime platform you can use to build your own
integrations solutions. It provides a complete, enterprise ready ESB
exclusively powered by OSGi."
HOMEPAGE="http://servicemix.apache.org/"
SRC_URI="http://mirrors.muzzy.it/apache/servicemix/servicemix-6/${PV}.M1/apache-servicemix-${PV}.M1.zip"

LICENSE="Apache License v2.0"
SLOT="6.0"
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
#	enewgroup smx
#	enewuser smx -1 -1 /dev/null smx
	eend ${?}
}

src_unpack() {
	unpack ${A}
	cd ${WORKDIR}

	mv apache-servicemix-${PV}.M1/ ${PF}
	cd ${S}
}

src_install() {

	INSTDIR="/opt"

	dodir /var/log/smx/
	insinto ${INSTDIR}/${PF}/bin
	newins bin/client "client"
	newins bin/instance "instance"
	newins bin/karaf "karaf"
	newins bin/servicemix "servicemix"
	newins bin/setenv "setenv"
	newins bin/shell "shell"
	newins bin/status "status"
	newins ${FILESDIR}/karaf_linux.sh "karaf_linux.sh"

	insinto /etc/default/
	newins ${FILESDIR}/servicemix.conf "servicemix.conf"

	for dir in data deploy etc lib licenses system ; do
		cp -r ${S}/${dir} ${D}/${INSTDIR}/${PF}/${dir}/
		
	done

	# Temporary create a link under /opt/ to current release version.
	# In the next future will be a eselect-smx tool.
	insinto /opt
	dosym /opt/${PF} /opt/apache-servicemix

	# Systemd files
	systemd_dounit "${FILESDIR}"/servicemix.service
	systemd_install_serviced "${FILESDIR}"/servicemix.service.conf

	dodoc LICENSE NOTICE README RELEASE-NOTES

	einfo "Configure /etc/default/servicemix.conf before start service."
}

