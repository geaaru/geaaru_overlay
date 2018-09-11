# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Heade$

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit distutils-r1 git-r3

DESCRIPTION="Python RADIUS tools"
HOMEPAGE="https://pypi.python.org/pypi/pyrad"

EGIT_REPO_URI="https://github.com/geaaru/pyrad.git"
EGIT_BRANCH="master"
EGIT_COMMIT="970fe79e9aaa0e4ddad5760d8ba8841cda1d66c1"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~arm"
IUSE="doc test"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]
		>=dev-python/pbr-0.6[${PYTHON_USEDEP}]
		dev-python/netaddr[${PYTHON_USEDEP}]
		dev-python/six[${PYTHON_USEDEP}]
	test? ( dev-python/nose[${PYTHON_USEDEP}]
			>=dev-python/mock-1.0[${PYTHON_USEDEP}]
			>=dev-python/mox-0.5.3[${PYTHON_USEDEP}]
			>=dev-python/subunit-0.0.18[${PYTHON_USEDEP}]
			>=dev-python/testrepository-0.0.18[${PYTHON_USEDEP}]
			>=dev-python/testscenarios-0.4[${PYTHON_USEDEP}]
			>=dev-python/testtools-0.9.34[${PYTHON_USEDEP}] )
	doc? ( dev-python/sphinx[${PYTHON_USEDEP}] )"

RDEPEND="
"


