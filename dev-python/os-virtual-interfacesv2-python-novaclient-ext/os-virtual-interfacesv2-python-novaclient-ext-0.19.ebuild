# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-python/os-virtual-interfacesv2-python-novaclient-ext/os-virtual-interfacesv2-python-novaclient-ext-0.15.ebuild,v 1.1 2014/05/12 03:12:50 prometheanfire Exp $

EAPI=7
PYTHON_COMPAT=( python2_7 )

inherit distutils-r1

DESCRIPTION="Adds Virtual Interfaces support to python-novaclient"
HOMEPAGE="https://github.com/rackerlabs/os_virtual_interfacesv2_ext"
SRC_URI="mirror://pypi/${PN:0:1}/os_virtual_interfacesv2_python_novaclient_ext/os_virtual_interfacesv2_python_novaclient_ext-${PV}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"

S="${WORKDIR}/os_virtual_interfacesv2_python_novaclient_ext-${PV}"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
RDEPEND=">=dev-python/python-novaclient-2.20.0[${PYTHON_USEDEP}]"
