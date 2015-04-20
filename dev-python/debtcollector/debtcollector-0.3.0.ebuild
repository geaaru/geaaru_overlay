# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5
PYTHON_COMPAT=( python{2_7,3_3,3_4} )

inherit distutils-r1

DESCRIPTION="A collection of Python deprecation patterns and strategies that
help you collect your technical debt in a non-destructive manner."
HOMEPAGE="https://github.com/openstack/debtcollector"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~amd64-linux ~x86-linux"
IUSE="test"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]
		>=dev-python/pbr-0.6[${PYTHON_USEDEP}]
		!~dev-python/pbr-0.7[${PYTHON_USEDEP}]
		<dev-python/pbr-1.0[${PYTHON_USEDEP}]
		test? ( >=dev-python/hacking-0.10.0[${PYTHON_USEDEP}]
				<dev-python/hacking-0.11[${PYTHON_USEDEP}]
				>=dev-python/coverage-3.6[${PYTHON_USEDEP}]
				>=dev-python/fixtures-0.3.14[${PYTHON_USEDEP}]
				>=dev-python/keyring-2.1[${PYTHON_USEDEP}]
				>=dev-python/mock-1.0[${PYTHON_USEDEP}]
				>=dev-python/sphinx-1.1.2[${PYTHON_USEDEP}]
				!~dev-python/sphinx-1.2.0[${PYTHON_USEDEP}]
				<dev-python/sphinx-1.3[${PYTHON_USEDEP}]
				>=dev-python/testrepository-0.0.18[${PYTHON_USEDEP}]
				>=dev-python/testscenarios-0.4[${PYTHON_USEDEP}]
				>=dev-python/testtools-0.9.36[${PYTHON_USEDEP}]
				!~dev-python/testtools-1.2.0[${PYTHON_USEDEP}]
		)
"

RDEPEND=">=dev-python/anyjson-0.3.3[${PYTHON_USEDEP}]
		>=dev-python/six-1.9.0[${PYTHON_USEDEP}]
		>=dev-python/Babel-1.3[${PYTHON_USEDEP}]
		>=dev-python/wrapt-1.7.0[${PYTHON_USEDEP}]
		>=dev-python/oslo-utils-1.4.0[${PYTHON_USEDEP}]
"

