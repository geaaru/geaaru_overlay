# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )
DISTUTILS_IN_SOURCE_BUILD=1

inherit distutils-r1

MY_PN=${PN//-/_}

DESCRIPTION="python implementation of POSIX IPC primitive (semaphores, shared memory and message queues)"
HOMEPAGE="https://pypi.python.org/pypi/posix_ipc"
SRC_URI="mirror://pypi/${PN:0:1}/${MY_PN}/${MY_PN}-${PV}.tar.gz"

S="${WORKDIR}/${MY_PN}-${PV}"
LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
"
RDEPEND="
"
