# Copyright 2018 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{6,7} )
inherit distutils-r1

DESCRIPTION="python3 bindings for the LXC container API."
HOMEPAGE="https://github.com/lxc/python3-lxc"
SRC_URI="https://github.com/lxc/${PN}/archive/${P}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~arm ~arm64"
IUSE=""

S="${WORKDIR}/${PN}-${P}"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]
	>=app-emulation/lxc-3.0.0"
RDEPEND="${DEPEND}"
