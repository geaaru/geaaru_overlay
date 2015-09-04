# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit eutils

DESCRIPTION="Geaaru overlay portage profiles"
HOMEPAGE="https://github.com/geaaru/geaaru_overlay"
SRC_URI=""

LICENSE="GPL License v2.0"
SLOT="5.0"
KEYWORDS="~amd64 ~x86 ~arm"

IUSE="openstack"

COMMON_DEP=""

RDEPEND=""
DEPEND=""

src_unpack() {

	mkdir ${S}

}

src_install() {

	insinto /etc/portage/package.mask/
	newins ${FILESDIR}/package.mask.openstack "00-geaaru.openstack.package.mask"

}

