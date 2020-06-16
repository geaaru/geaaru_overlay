# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit eutils user systemd

DESCRIPTION="Apache Karaf is a modern and polymorphic applications runtime.
It's a lightweight, powered, and enterprise ready runtime powered by OSGi."
HOMEPAGE="http://servicemix.apache.org/"
# Url with certs expired :'(
#SRC_URI="https://mirror.nohup.it/apache/karaf/${PV}/apache-karaf-${PV}.tar.gz"
SRC_URI="https://downloads.apache.org/karaf/${PV}/apache-karaf-${PV}.tar.gz"

LICENSE="Apache License v2.0"
SLOT="4.2"
KEYWORDS="~amd64 ~x86"

IUSE=""

RDEPEND="virtual/awk
	sys-apps/sed
	>=virtual/jre-1.8
"
DEPEND=""

pkg_setup() {
	ebegin "Creating karaf group and user"
	enewgroup karaf
	enewuser karaf -1 -1 /var/lib/karaf karaf
	eend ${?}
}

src_unpack() {
	unpack ${A}
	cd ${WORKDIR}

	mv apache-karaf-${PV}/ ${PF}
	cd ${S}
}

src_install() {

	INSTDIR="/opt"

	dodir /var/log/karaf/
	keepdir /var/log/karaf

	exeinto ${INSTDIR}/${PF}/bin
	newexe bin/client "client"
	newexe bin/instance "instance"
	newexe bin/karaf "karaf"
	newexe bin/setenv "setenv"
	newexe bin/shell "shell"
	newexe bin/status "status"
	newexe ${FILESDIR}/karaf_linux-${SLOT}.sh "karaf_linux.sh"

	insinto /etc/default/
	newins ${FILESDIR}/karaf-${SLOT}.conf "karaf-${SLOT}.conf"

	# Fix conffile path
	sed -i -e 's/conffile=.*/conffile=\/etc\/default\/karaf-4.2.conf/g' \
		${D}/${INSTDIR}/${PF}/bin/karaf_linux.sh

	sed -i -e "s/KARAF_VERSION/${PV}/g" \
		${D}/${INSTDIR}/etc/default/karaf-${SLOT}.conf

	for dir in data deploy etc lib system ; do
		cp -r ${S}/${dir} ${D}/${INSTDIR}/${PF}/${dir}/
	done

	dodir ${INSTDIR}/${PF}/tmp

	# Systemd files
	systemd_dounit "${FILESDIR}"/karaf-${SLOT}.service
	systemd_install_serviced "${FILESDIR}"/karaf-4.2.service.conf "karaf-${SLOT}.service"

	dodoc LICENSE NOTICE README.md RELEASE-NOTES.md

	fowners karaf:karaf /etc/default/karaf-${SLOT}.conf /var/log/karaf/
	fowners karaf:karaf -R ${INSTDIR}/${PF}

	einfo "Configure /etc/default/karaf-${SLOT}.conf before start service."
}

