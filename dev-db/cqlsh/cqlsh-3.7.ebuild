# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5
PYTHON_COMPAT=( python2_7 )

inherit multilib eutils distutils-r1


DESCRIPTION="Cassandra Query Language Shell"
HOMEPAGE="http://cassandra.apache.org/"
SRC_URI="mirror://apache/cassandra/${PV}/apache-cassandra-${PV}-bin.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~arm"
IUSE=""
S="${WORKDIR}/apache-cassandra-${PV}"
DEPEND="
	dev-lang/python:2.7
	>=dev-python/cassandra-driver-3.6.0[${PYTHON_USEDEP}]
"
RDEPEND="${DEPEND}"

src_compile() {
	local nothing2do=""
}

src_install() {

	INSTDIR="${EROOT}usr/$(get_libdir)/python2.7/cqlsh/"

	dodir ${INSTDIR}

	cp ${S}/bin/cqlsh.py ${D}/${INSTDIR}

	dodir /usr/bin
	echo "#!/bin/sh
if -z "\${CQLSH_NO_BUNDLED}" ; then
	CQLSH_NO_BUNDLED=TRUE
fi
${EROOT}usr/$(get_libdir)/python2.7/cqlsh/cqlsh.py
exit \$?" > ${D}/usr/bin/cqlsh

	fperms 0755 /usr/bin/cqlsh

	dodoc LICENSE.txt

}
