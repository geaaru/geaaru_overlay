# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6
PYTHON_COMPAT=( python{2_7,3_4,3_5,3_6} )

inherit distutils-r1

DESCRIPTION="A modern, feature-rich and highly-tunable Python client library for Apache Cassandra (1.2+) and DataStax Enterprise (3.1+) using exclusively Cassandra’s binary protocol and Cassandra Query Language v3"
HOMEPAGE="https://pypi.python.org/pypi/cassandra-driver"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~arm"
IUSE=""

DEPEND="
	>=dev-python/six-1.6[${PYTHON_USEDEP}]
	dev-python/setuptools[${PYTHON_USEDEP}]
"
RDEPEND="
	virtual/python-futures[${PYTHON_USEDEP}]
	dev-libs/libev
${DEPEND}
"
