# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5
PYTHON_COMPAT=( python2_7 python3_3 python3_4 )

inherit distutils-r1 git-2

DESCRIPTION="Sphinx pl/sql extension"
HOMEPAGE="https://github.com/felipebz/sphinxcontrib-plsql"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="doc"

EGIT_REPO_URI="https://github.com/felipebz/sphinxcontrib-plsql.git"

CDEPEND="
	dev-python/pbr[${PYTHON_USEDEP}]
	>=dev-python/sphinx-0.6[${PYTHON_USEDEP}]
"
DEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
	doc? ( >=dev-python/sphinx-0.6[${PYTHON_USEDEP}] )
"
RDEPEND="${CDEPEND}"

python_compile_all() {
	use doc && emake -C docs html
}

python_test() {
	nosetests || die "tests failed under ${EPYTHON}"
}

python_install_all() {
	use doc && local HTML_DOCS=( docs/build/html/. )

	distutils-r1_python_install_all
}
