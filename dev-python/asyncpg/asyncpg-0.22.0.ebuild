# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
PYTHON_COMPAT=( python3_{7,8} )

inherit distutils-r1

DESCRIPTION="An asyncio PostgreSQL driver"
HOMEPAGE="https://github.com/MagicStack/asyncpg/ https://pypi.org/project/asyncpg/"
SRC_URI="https://github.com/MagicStack/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"
LICENSE="Apache-2.0"
KEYWORDS="~amd64 ~x86"
SLOT="0"
IUSE="+cython"
RESTRICT=""

PATCHES=(
	"${FILESDIR}/disable-extensions.patch"
)


BDEPEND="cython? ( dev-python/cython[${PYTHON_USEDEP}] )"
RDEPEND="dev-python/typing-extensions[${PYTHON_USEDEP}]"
DEPEND="${RDEPEND}
	dev-python/setuptools[${PYTHON_USEDEP}]"


