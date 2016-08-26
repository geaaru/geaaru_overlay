# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5
PYTHON_COMPAT=( python2_7 )
DISTUTILS_SINGLE_IMPL=1

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
	>=dev-python/cython-0.23.4[${PYTHON_USEDEP}]
	>=dev-python/cassandra-driver-3.6.0[${PYTHON_USEDEP}]
"
RDEPEND="${DEPEND}"

src_prepare() {

	rm -rf ${S}/{conf,doc,interface,javadoc,lib,tools,logs}

	# Move pylib content on main directory
	mv ${S}/pylib/* ${S}

}

#python_configure() {
#	mydistutilsargs=( --no-compile )
#}

python_compile_all() {
	python_setup 'python2*'
	distutils-r1_python_compile
}

src_install() {
	INSTDIR="${EROOT}usr/$(get_libdir)/python2.7/site-packages/cqlsh/"

	dodir ${INSTDIR}

	cp ${S}/bin/cqlsh.py ${D}/${INSTDIR}

	dodir /usr/bin
	echo "#!/bin/sh
if [ -z "\${CQLSH_NO_BUNDLED}" ]; then
	CQLSH_NO_BUNDLED=TRUE
fi
${EROOT}usr/$(get_libdir)/python2.7/site-packages/cqlsh/cqlsh.py
exit \$?" > ${D}/usr/bin/cqlsh

	fperms 0755 /usr/bin/cqlsh

	dodoc LICENSE.txt

	python_setup 'python2*'
	distutils-r1_python_install
}
