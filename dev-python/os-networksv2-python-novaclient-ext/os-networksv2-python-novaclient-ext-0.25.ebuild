# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-python/os-networksv2-python-novaclient-ext/os-networksv2-python-novaclient-ext-0.21-r1.ebuild,v 1.1 2014/04/08 06:38:42 prometheanfire Exp $

EAPI=7
PYTHON_COMPAT=( python2_7 )

inherit distutils-r1

DESCRIPTION="Adds network extension support to python-novaclient"
HOMEPAGE="https://github.com/rackerlabs/os_networksv2_python_novaclient_ext"
SRC_URI="mirror://pypi/${PN:0:1}/os_networksv2_python_novaclient_ext/os_networksv2_python_novaclient_ext-${PV}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"

S="${WORKDIR}/os_networksv2_python_novaclient_ext-${PV}"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
RDEPEND=">=dev-python/python-novaclient-2.20.0[${PYTHON_USEDEP}]"
