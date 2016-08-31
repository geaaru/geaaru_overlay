# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5
inherit eutils user versionator systemd

DESCRIPTION="The Apache Cassandra database is the right choice when you need
scalability and high availability without compromising performance."
HOMEPAGE="http://cassandra.apache.org/"
SRC_URI="mirror://apache/cassandra/${PV}/apache-cassandra-${PV}-bin.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE="+systemd"

DEPEND="
	>=virtual/jdk-1.8
	dev-libs/jemalloc
"
RDEPEND="${DEPEND}
"

S="${WORKDIR}/apache-cassandra-${PV}"
INSTALL_DIR="/opt/cassandra"

pkg_setup() {
	enewgroup cassandra
	enewuser cassandra -1 /bin/bash ${INSTALL_DIR} cassandra
}

src_prepare() {
	cd "${S}"
	find . \( -name \*.bat -or -name \*.exe \) -delete
	rm bin/stop-server

	# Remove cqlsh staff (present of csqsh package)
	rm -rf pylib bin/cqlsh*

	# Copy libsigar-amd64-linux.so to home
	cp -f "${S}"/lib/sigar-bin/libsigar-amd64-linux.so "${S}"
	rm -rf lib/sigar-bin/
}

src_install() {
	insinto ${INSTALL_DIR}

	sed -e "s|cassandra_storagedir=\"\$CASSANDRA_HOME/data\"|cassandra_storagedir=\"/var/lib/cassandra/\"|g" \
		-i bin/cassandra.in.sh || die "Error on initialize bin/cassandra.in.sh"
	sed -e 's|JAVA_OPTS:|JAVA_OPTS |g' \
		-i bin/cassandra.in.sh || die "Error on initialize bin/cassandra.in.sh"
	sed -e 's:cassandra.logdir=.*:cassandra.logdir=/var/log/cassandra":' \
		-i bin/cassandra || die "Error on fix bin/cassandra"
	sed -e 's:\$NUMACTL\ \"\$JAVA\":\$NUMACTL\ \"\$JAVA\" $JAVA_OPTS:g' \
		-i bin/cassandra || die "Error on fix bin/cassandra"
	sed -e 's:\${CASSANDRA_HOME}/logs/:/var/log/cassandra/:g' -i conf/cassandra-env.sh

	# Temporary copy conf directory. In the future I can remove it.
	doins -r bin conf interface lib tools
	dodir ${INSTALL_DIR}/lib/sigar-bin
	insinto ${INSTALL_DIR}/lib/sigar-bin
	# Check if I can avoid this.
	doins libsigar-amd64-linux.so

	for i in bin/* ; do
		if [[ $i == *.in.sh ]]; then
			continue
		fi
		fperms 755 ${INSTALL_DIR}/${i}
		make_wrapper "$(basename ${i})" "${INSTALL_DIR}/${i}"
	done

	insinto /etc/cassandra
	doins conf/*.{properties,yaml,xml} || die "doins failed"
	# Temporary before a more clean startup script
	doins conf/cassandra-env.sh || die "Error on copy cassandra-env.sh"
	doins conf/jvm.options || die "Error on copy jvm.options"

	if use systemd; then
		systemd_dounit "${FILESDIR}/cassandra.service"
	else
		newinitd "${FILESDIR}/cassandra-initd" cassandra
	fi

	echo "CONFIG_PROTECT=\"${INSTALL_DIR}/conf\"" > "${T}/25cassandra" || die
	doenvd "${T}/25cassandra"

	# Runtime dirs needed
	keepdir /var/lib/cassandra/
	keepdir /var/log/cassandra/ /var/lib/cassandra/commitlog /var/lib/cassandra/data || die "keepdir failed"

	fowners -R cassandra:cassandra ${INSTALL_DIR}
	fowners -R cassandra:cassandra /var/lib/cassandra
	fowners -R cassandra:cassandra /var/log/cassandra


}

pkg_postinst() {

	elog "Cassandra's configuration is at /etc/cassandra"
	elog "Cassandra works best when the commitlog directory and the data directory are on different disks"
	elog "The default configuration sets them to /var/lib/cassandra/commitlog and /var/lib/cassandra/data respectively"
	elog "You may wish to change those to different mount points"

	ewarn "You should start/stop cassandra via systemctl/initrd service, as this will properly switch to the cassandra:cassandra user group"
	ewarn "Starting cassandra via its default 'cassandra' shell command, as root, may cause permission problems later on when started as the cassandra user"

}
