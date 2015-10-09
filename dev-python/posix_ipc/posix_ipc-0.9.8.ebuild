# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-python/pycadf/pycadf-0.5-r1.ebuild,v 1.2 2014/07/06 12:45:32 mgorny Exp $

EAPI=5
PYTHON_COMPAT=( python2_7 )

inherit distutils-r1

MY_PN=${PN//-/_}

DESCRIPTION="python implementation of POSIX IPC primitive (semaphores, shared memory and message queues)"
HOMEPAGE="https://pypi.python.org/pypi/posix_ipc"
SRC_URI="mirror://pypi/${PN:0:1}/${MY_PN}/${MY_PN}-${PV}.tar.gz"

S="${WORKDIR}/${MY_PN}-${PV}"
LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="doc test"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]
		>=dev-python/pbr-0.6[${PYTHON_USEDEP}]
	test? ( >=dev-python/sphinx-1.1.2[${PYTHON_USEDEP}]
			dev-python/oslo-sphinx[${PYTHON_USEDEP}]
			~dev-python/docutils-0.9.1[${PYTHON_USEDEP}]
			>=dev-python/hacking-0.8.0[${PYTHON_USEDEP}]
			>=dev-python/fixtures-0.3.14[${PYTHON_USEDEP}]
			dev-python/nose[${PYTHON_USEDEP}]
			>=dev-python/mock-1.0[${PYTHON_USEDEP}]
			>=dev-python/mox-0.5.3[${PYTHON_USEDEP}]
			>=dev-python/subunit-0.0.18[${PYTHON_USEDEP}]
			>=dev-python/coverage-3.6[${PYTHON_USEDEP}]
			>=dev-python/testrepository-0.0.18[${PYTHON_USEDEP}]
			>=dev-python/testscenarios-0.4[${PYTHON_USEDEP}]
			>=dev-python/testtools-0.9.34[${PYTHON_USEDEP}] )
	doc? ( dev-python/oslo-sphinx[${PYTHON_USEDEP}]
		dev-python/sphinx[${PYTHON_USEDEP}] )"

RDEPEND=">=dev-python/Babel-1.3[${PYTHON_USEDEP}]
		>=dev-python/iso8601-0.1.9[${PYTHON_USEDEP}]
		>=dev-python/netaddr-0.7.6[${PYTHON_USEDEP}]
		|| (
			>=dev-python/oslo-config-1.2.0:1.x[${PYTHON_USEDEP}]
			>=dev-python/oslo-config-2.4.0:2.x[${PYTHON_USEDEP}]
		)
		|| (
			>=dev-python/oslo-messaging-1.3.0:1.x[${PYTHON_USEDEP}]
			>=dev-python/oslo-messaging-2.4.0:2.x[${PYTHON_USEDEP}]
		)
		>=dev-python/pytz-2010h[${PYTHON_USEDEP}]
		>=dev-python/six-1.5.2[${PYTHON_USEDEP}]
		>=dev-python/webob-1.2.3[${PYTHON_USEDEP}]"

python_prepare_all() {
	distutils-r1_python_prepare_all
}

python_compile_all() {
	use doc && emake -C doc html
}

python_test() {
	nosetests ${MY_PN}/tests || die "test failed under ${EPYTHON}"
}

python_install_all() {
	use doc && local HTML_DOCS=( doc/build/html/. )
	distutils-r1_python_install_all
}
