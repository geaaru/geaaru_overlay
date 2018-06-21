# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="4"

inherit versionator

DESCRIPTION="A dependancy manager for PHP"
HOMEPAGE="http://getcomposer.org"

SRC_URI="http://getcomposer.org/download/${PV}/composer.phar -> ${PN}-${PV}.phar"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND="dev-lang/php"
RDEPEND="dev-lang/php[zip]"

src_unpack() {
        cp "${DISTDIR}/${A}" "${WORKDIR}"
        S=${WORKDIR}
}

src_install() {
        newbin ${A} composer-${PV}
        dosym composer-${PV} /usr/bin/composer
}

