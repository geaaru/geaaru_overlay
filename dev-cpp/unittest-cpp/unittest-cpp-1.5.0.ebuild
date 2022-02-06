# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=7

inherit cmake-utils eutils

DESCRIPTION="Unit Test++ "
HOMEPAGE="github.com/unittest-cpp"
#SRC_URI="http://sourceforge.net/projects/unittest-cpp/files/UnitTest%2B%2B/${PV}/unittest-cpp-${PV}.zip"
SRC_URI="https://github.com/unittest-cpp/unittest-cpp/archive/v${PV}.zip"
SLOT="0"
LICENSE="MIT"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

