# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python2_7 )
inherit distutils-r1

DESCRIPTION="Web-based user interface, REST API, and task engine built on top of Ansible"
HOMEPAGE="https://github.com/ansible/awx"
SRC_URI="https://github.com/ansible/${PN}/archive/${PV}.tar.gz -> ${PF}.tar.gz"
RETRICT="mirror"
LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~arm"
IUSE=""

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]
	>=app-admin/ansible-2.4.0.0[${PYTHON_USEDEP}]
"
RDEPEND="${DEPEND}"
