# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit eutils

DESCRIPTION="Unit Test++ "
HOMEPAGE="http://sourceforge.net/projects/unittest-cpp/"
SRC_URI="http://sourceforge.net/projects/unittest-cpp/files/UnitTest%2B%2B/${PV}/unittest-cpp-${PV}.zip"
SLOT="0"
LICENSE="MIT"
KEYWORDS="~amd64"
IUSE=""
S="${WORKDIR}/UnitTest++"

DEPEND=""
RDEPEND="${DEPEND}"


src_install () {
	
	# Install static library
#	insinto /usr/lib64/
	dolib.a ${S}/libUnitTest++.a

	# Create include directory
    dodir /usr/include/UnitTest++
	insinto /usr/include/UnitTest++
    for i in ${S}/src/*.h ; do
		doins $i
	done


}

