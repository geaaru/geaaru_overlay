# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header$

EAPI=5
PYTHON_COMPAT=( python2_7 )

inherit distutils-r1

DESCRIPTION="Makes it easier to use PySCSS in Django."
HOMEPAGE="https://pypi.python.org/pypi/django-pyscss"
SRC_URI="mirror://pypi/${PN:0:1}/django-pyscss/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]
		>=dev-python/pbr-0.6.0[${PYTHON_USEDEP}]
		>=dev-python/pyscss-1.2.1[${PYTHON_USEDEP}]
		test? (	>=dev-python/hacking-0.8.0[${PYTHON_USEDEP}]
				>=dev-python/Babel-1.3[${PYTHON_USEDEP}]
				>=dev-python/coverage-3.6[${PYTHON_USEDEP}]
				>=dev-python/mox-0.5.3[${PYTHON_USEDEP}]
				>=dev-python/sphinx-1.1.2[${PYTHON_USEDEP}]
				dev-python/oslo-sphinx[${PYTHON_USEDEP}] )"
RDEPEND=">=dev-python/django-1.4[${PYTHON_USEDEP}]
		<dev-python/django-1.7[${PYTHON_USEDEP}]
		>=dev-python/six-1.5.2[${PYTHON_USEDEP}]"

python_test() {
	"${PYTHON}" -m openstack_auth.tests.run_tests || die "Testsuite failed"
}
