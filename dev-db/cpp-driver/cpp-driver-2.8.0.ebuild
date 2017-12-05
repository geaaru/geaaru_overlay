# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6
inherit cmake-utils

DESCRIPTION="DataStax C/C++ Driver for Cassandra"
HOMEPAGE="http://datastax.github.io/cpp-driver/"
SRC_URI="https://github.com/datastax/${PN}/archive/${PV}.tar.gz -> ${P}.tar.gz"

RESTRICT="nomirror"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="libressl"

RDEPEND="
	dev-libs/libuv
	!libressl? ( dev-libs/openssl:0= )
	libressl? ( dev-libs/libressl:0= )
"
DEPEND="${RDEPEND}"
