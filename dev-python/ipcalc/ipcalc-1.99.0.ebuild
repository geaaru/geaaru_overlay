# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6
PYTHON_COMPAT=( python{2_7,3_4,3_5,3_6} pypy )

inherit distutils-r1

DESCRIPTION="IP subnet calculator"
HOMEPAGE="https://pypi.python.org/pypi/ipcalc/"
SRC_URI="mirror://pypi/i/${PN}/${P}.tar.gz"

SLOT="0"
LICENSE="BSD-2"
KEYWORDS="amd64 x86"
IUSE=""
DEPEND="dev-python/six:=[${PYTHON_USEDEP}]"
RDEPEND="${DEPEND}"
