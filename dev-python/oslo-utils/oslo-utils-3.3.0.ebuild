# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5
PYTHON_COMPAT=( python2_7 python3_3 python3_4 )

inherit distutils-r1 vcs-snapshot

MY_PN=${PN/-/.}

DESCRIPTION="Oslo Utility library"
HOMEPAGE="http://launchpad.net/oslo"
SRC_URI="mirror://pypi/${MY_PN:0:1}/${MY_PN}/${MY_PN}-${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="3.x"
KEYWORDS="~amd64 ~x86"
IUSE="doc test"

CDEPEND="
	>=dev-python/pbr-1.6[${PYTHON_USEDEP}]
"
DEPEND="
	!dev-python/oslo-utils:0
	!dev-python/oslo-utils:1.x
	!dev-python/oslo-utils:2.x
	dev-python/setuptools[${PYTHON_USEDEP}]
	${CDEPEND}
	test? (
		>=dev-python/fixtures-1.3.1[${PYTHON_USEDEP}]
		>=dev-python/subunit-0.0.18[${PYTHON_USEDEP}]
		>=dev-python/testrepository-0.0.18[${PYTHON_USEDEP}]
		>=dev-python/testscenarios-0.4[${PYTHON_USEDEP}]
		>=dev-python/testtools-1.4.0[${PYTHON_USEDEP}]
		>=dev-python/oslotest-1.10.0[${PYTHON_USEDEP}]
		>=dev-python/mock-1.2[${PYTHON_USEDEP}]
		>=dev-python/bandit-0.13.2[${PYTHON_USEDEP}]
		|| (
			>=dev-python/oslo-config-2.7.0:2.x[${PYTHON_USEDEP}]
			>=dev-python/oslo-config-3.2.0:3.x[${PYTHON_USEDEP}]
		)
	)
	doc? (
		>=dev-python/oslo-sphinx-2.5.0[${PYTHON_USEDEP}]
		>=dev-python/sphinx-1.1.2[${PYTHON_USEDEP}]
		!~dev-python/sphinx-1.2.0[${PYTHON_USEDEP}]
	)
"
RDEPEND="
	${CDEPEND}
	>=dev-python/Babel-1.3[${PYTHON_USEDEP}]
	>=dev-python/six-1.9.0[${PYTHON_USEDEP}]
	>=dev-python/funcsigs-0.4
	>=dev-python/iso8601-0.1.9[${PYTHON_USEDEP}]
	>=dev-python/oslo-i18n-1.5.0[${PYTHON_USEDEP}]
	>=dev-python/monotonic-0.3[${PYTHON_USEDEP}]
	>=dev-python/pytz-2013.6[${PYTHON_USEDEP}]
	>=dev-python/netaddr-0.7.12[${PYTHON_USEDEP}]
	>=dev-python/netifaces-0.10.4[${PYTHON_USEDEP}]
	>=dev-python/debtcollector-0.3.0[${PYTHON_USEDEP}]
"

python_prepare_all() {
	sed -i '/^hacking/d' test-requirements.txt || die
}

python_compile_all() {
	use doc && esetup.py build_sphinx
}

# Note: Tests fail due to requiring installation
#
# Installation appears to fail due to the use of namespace packages but root
# cause was never truly established.
#
# Tests fail with:
# ImportError: No module named 'oslo.utils

#RESTRICT="test"

python_test() {
	distutils_install_for_testing

	cd "${TEST_DIR}"/lib || die

	rm -rf .testrepository || die "couldn't remove '.testrepository' under ${EPTYHON}"

	testr init || die "testr init failed under ${EPYTHON}"
	testr run || die "testr run failed under ${EPYTHON}"
}

python_install_all() {
	use doc && local HTML_DOCS=( doc/build/html/. )

	distutils-r1_python_install_all
}
