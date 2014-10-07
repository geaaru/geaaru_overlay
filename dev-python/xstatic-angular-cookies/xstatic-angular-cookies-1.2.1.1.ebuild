# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-python/pycadf/pycadf-0.5-r1.ebuild,v 1.2 2014/07/06 12:45:32 mgorny Exp $

EAPI=5
PYTHON_COMPAT=( python2_7 )

inherit distutils-r1

DESCRIPTION="Angular-Cookies 1.2.1 (XStatic package)"
HOMEPAGE="https://pypi.python.org/pypi/XStatic-Angular-Cookies"
MY_PN="XStatic-Angular-Cookies"
SRC_URI="mirror://pypi/${MY_PN:0:1}/${MY_PN}/${MY_PN}-${PV}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
S="${WORKDIR}/${MY_PV}-${PV}"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]
		>=dev-python/pbr-0.6[${PYTHON_USEDEP}]
		>=dev-python/xstatic-1.0.1[${PYTHON_USEDEP}]
		>=dev-python/xstatic-angular-1.2.1.1[${PYTHON_USEDEP}]
	test? ( >=dev-python/testtools-0.9.34[${PYTHON_USEDEP}] )"

RDEPEND=""

python_prepare_all() {
	distutils-r1_python_prepare_all
}

python_test() {
	nosetests ${MY_PN}/tests || die "test failed under ${EPYTHON}"
}

python_install_all() {
	distutils-r1_python_install_all
}
