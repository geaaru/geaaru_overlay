# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit eutils user

YII_COMMIT="467ff50"
DESCRIPTION="A high-performance moderm PHP framework for web applications and APIs."
HOMEPAGE="http://www.yiiframework.com/"
SRC_URI="https://github.com/yiisoft/${PN}/releases/download/${PV}/${PN}-${PV}.${YII_COMMIT}.tar.gz"

LICENSE="BSD Lincense"
SLOT="1.1"
KEYWORDS="~amd64 ~x86 ~arm"

S="${WORKDIR}/${P}.${YII_COMMIT}/"
IUSE=""

COMMON_DEP="
	dev-lang/php
"

RDEPEND="
	${COMMON_DEP}
	|| (
		www-servers/apache
		www-servers/nginx
	)
"

DEPEND="
	${COMMON_DEP}
"

src_prepare() {
	epatch "${FILESDIR}"/oracle_cache_fix.patch
}

src_install() {

	INSTDIR="/opt/${PF}"

	dodir ${INSTDIR}

	for dir in framework requirements ; do
		cp -r ${S}/${dir} ${D}/${INSTDIR}/${dir}
	done

	dodoc LICENSE CHANGELOG README UPGRADE
}

