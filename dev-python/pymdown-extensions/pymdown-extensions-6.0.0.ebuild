# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2_7 python3_6 )
inherit distutils-r1

DESCRIPTION="Extensions for Python Markdown."
HOMEPAGE="https://github.com/facelessuser/pymdown-extensions"
SRC_URI="https://github.com/facelessuser/${PN}/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
RDEPEND="${DEPEND}
	>=dev-python/mkdocs-1[${PYTHON_USEDEP}]"

src_prepare() {

	# remove tests directory
	rm -rf ${S}/tests || die

	sed -i -e "s:, 'tests'::g"  ${S}/setup.py

	distutils-r1_src_prepare
}
