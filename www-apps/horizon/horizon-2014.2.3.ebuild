# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/sys-cluster/nova/nova-2014.1.9999.ebuild,v 1.5 2014/08/10 20:21:07 slyfox Exp $

EAPI=5
PYTHON_COMPAT=( python2_7 )

inherit distutils-r1 eutils

DESCRIPTION="A Django-based project aimed at providing a complete OpenStack Dashboard"
HOMEPAGE="https://launchpad.net/horizon"
#EGIT_PROJECT="horizon"
#EGIT_REPO_URI="https://github.com/openstack/horizon.git"
#EGIT_COMMIT="2014.2.rc1"

SRC_URI="http://launchpad.net/${PN}/juno/${PV}/+download/${P}.tar.gz"
LICENSE="Apache-2.0"
SLOT="2014.2-juno"
KEYWORDS="~amd64 ~x86"
IUSE="test"

DEPEND="
		!www-apps/horizon:0
		!www-apps/horizon:2015.1-kilo
		!www-apps/horizon:liberty
		dev-python/setuptools[${PYTHON_USEDEP}]
		>=dev-python/pbr-0.6.0[${PYTHON_USEDEP}]
	test? ( >=dev-python/hacking-0.8.0[${PYTHON_USEDEP}]
			>=dev-python/coverage-3.6[${PYTHON_USEDEP}]
			dev-python/django-nose[${PYTHON_USEDEP}]
			~dev-python/docutils-0.9.1[${PYTHON_USEDEP}]
			>=dev-python/mox-0.5.3[${PYTHON_USEDEP}]
			dev-python/nose[${PYTHON_USEDEP}]
			dev-python/nose-exclude[${PYTHON_USEDEP}]
			>=dev-python/nosehtmloutput-0.0.3[${PYTHON_USEDEP}]
			dev-python/nosexcover[${PYTHON_USEDEP}]
			>=dev-python/openstack-nose-plugin-0.7[${PYTHON_USEDEP}]
			dev-python/oslo-sphinx[${PYTHON_USEDEP}]
			dev-python/selenium[${PYTHON_USEDEP}]
			>=dev-python/sphinx-1.1.2[${PYTHON_USEDEP}]
			>=dev-python/testtools-0.9.34[${PYTHON_USEDEP}]
	)"
#<dev-python/django-1.7[${PYTHON_USEDEP}]
RDEPEND=">=dev-python/django-1.4[${PYTHON_USEDEP}]
		>=dev-python/django-compressor-1.3[${PYTHON_USEDEP}]
		>=dev-python/django-openstack-auth-1.1.7[${PYTHON_USEDEP}]
		>=dev-python/django-pyscss-1.0.3[${PYTHON_USEDEP}]
		>=dev-python/eventlet-0.15.1[${PYTHON_USEDEP}]
		>=dev-python/httplib2-0.7.5[${PYTHON_USEDEP}]
		>=dev-python/iso8601-0.1.9[${PYTHON_USEDEP}]
		>=dev-python/kombu-2.5.0[${PYTHON_USEDEP}]
		>=dev-python/lesscpy-0.9j[${PYTHON_USEDEP}]
		>=dev-python/lockfile-0.8[${PYTHON_USEDEP}]
		>=dev-python/netaddr-0.7.6[${PYTHON_USEDEP}]
		>=dev-python/python-ceilometerclient-1.0.6[${PYTHON_USEDEP}]
		>=dev-python/python-cinderclient-1.1.0[${PYTHON_USEDEP}]
		>=dev-python/python-glanceclient-0.14.0[${PYTHON_USEDEP}]
		>=dev-python/python-heatclient-0.2.9[${PYTHON_USEDEP}]
		>=dev-python/python-keystoneclient-0.10.0[${PYTHON_USEDEP}]
		>=dev-python/python-neutronclient-2.3.6[${PYTHON_USEDEP}]
		>=dev-python/python-novaclient-2.18.0[${PYTHON_USEDEP}]
		>=dev-python/python-swiftclient-2.2.0[${PYTHON_USEDEP}]
		>=dev-python/python-troveclient-1.0.4[${PYTHON_USEDEP}]
		>=dev-python/pyscss-1.2.1[$PYTHON_USEDEP]
		>=dev-python/xstatic-1.0.0[${PYTHON_USEDEP}]
		>=dev-python/xstatic-angular-1.2.1.1[${PYTHON_USEDEP}]
		>=dev-python/xstatic-angular-cookies-1.2.1.1[${PYTHON_USEDEP}]
		>=dev-python/xstatic-angular-mock-1.2.1.1[${PYTHON_USEDEP}]
		>=dev-python/xstatic-bootstrap-datepicker-1.3.1.0[${PYTHON_USEDEP}]
		>=dev-python/xstatic-bootstrap-scss-3.2.0.0[${PYTHON_USEDEP}]
		>=dev-python/xstatic-d3-3.1.6.2[${PYTHON_USEDEP}]
		>=dev-python/xstatic-hogan-2.0.0.2[${PYTHON_USEDEP}]
		>=dev-python/xstatic-font-awesome-4.1.0[${PYTHON_USEDEP}]
		>=dev-python/xstatic-jasmine-1.3.1.1[${PYTHON_USEDEP}]
		>=dev-python/xstatic-jquery-1.7.2[${PYTHON_USEDEP}]
		>=dev-python/xstatic-jquery-migrate-1.2.1.1[${PYTHON_USEDEP}]
		>=dev-python/xstatic-jquery-quicksearch-2.0.3.1[${PYTHON_USEDEP}]
		>=dev-python/xstatic-jquery-tablesorter-2.0.6.0[${PYTHON_USEDEP}]
		>=dev-python/xstatic-jquery-ui-1.10.1[${PYTHON_USEDEP}]
		>=dev-python/xstatic-jsencrypt-2.0.0.2[${PYTHON_USEDEP}]
		>=dev-python/xstatic-qunit-1.14.0.2[${PYTHON_USEDEP}]
		>=dev-python/xstatic-rickshaw-1.5.0[${PYTHON_USEDEP}]
		>=dev-python/xstatic-spin-1.2.5.2[${PYTHON_USEDEP}]
		>=dev-python/pytz-2010h[${PYTHON_USEDEP}]
		>=dev-python/six-1.5.2[${PYTHON_USEDEP}]"

src_test() {
	./run_tests.sh -N --coverage
}


python_install() {
	distutils-r1_python_install

	dodir /etc/horizon

}

pkg_postinst() {

	elog "To complete installation: "
	elog "cp /usr/lib64/python2.7/site-packages/openstack_dashboard/local/local_settings.py.example /etc/horizon/local_settings.py"
	elog "ln -s /etc/horizon/local_settings.py /usr/lib64/python2.7/site-packages/openstack_dashboard/local/local_settings.py"

}
