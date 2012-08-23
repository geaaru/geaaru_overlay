# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/www-apache/mod_backhand/mod_backhand-1.2.2.ebuild,v 1.4 2007/01/15 15:32:45 chtekk Exp $

inherit apache-module

KEYWORDS="x86 amd64"

DESCRIPTION="Apache2 module with gSOAP support."
HOMEPAGE="http://sourceforge.net/projects/mod-gsoap"
SRC_URI="http://downloads.sourceforge.net/mod-gsoap/${PN}-${PV}.tar.gz"
LICENSE="as-is"
SLOT="0"
IUSE=""

DEPEND="net-libs/gsoap"
RDEPEND=""

DOCFILES=""

APACHE2_MOD_CONF="99_${PN}"
APACHE2_MOD_DEFINE="GSOAP"

APXS2_ARGS="-c -o ${PN}.so -I/usr/include/ ${PN}.c"

need_apache2

src_compile() {
	cd ${WORKDIR}/${PN}-${PV}/apache_20
	${APXS2} ${APXS2_ARGS}
#	apache-module_src_compile
}

pkg_postinst() {
	install -d -m 0755 -o apache -g apache "${ROOT}"/var/lib/mod_gsoap
	apache-module_pkg_postinst
}
