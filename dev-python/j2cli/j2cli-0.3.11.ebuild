# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Heade$

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6,3_7} )

inherit distutils-r1 git-r3

DESCRIPTION="Jinja2 Command-Line Tool"
HOMEPAGE="https://pypi.python.org/pypi/j2cli"

EGIT_REPO_URI="https://github.com/kolypto/${PN}.git"
EGIT_COMMIT="v${PV}"

LICENSE="BSD-2-Clause"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~arm"
IUSE="doc test"

RDEPEND="dev-python/jinja[${PYTHON_USEDEP}]
		dev-python/pyyaml[${PYTHON_USEDEP}]"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]
${RDEPEND}"

src_prepare() {
	# remove tests directory
	rm -rf ${S}/tests || die

	distutils-r1_src_prepare
}

