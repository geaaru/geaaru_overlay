# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
PYTHON_COMPAT=( python{3_7,3_8} )

inherit distutils-r1 eutils git-r3

DESCRIPTION="Fortify FPR parser and report creator"
HOMEPAGE="https://github.com/geaaru/python-fortify"

EGIT_REPO_URI="https://github.com/geaaru/python-fortify.git"
EGIT_BRANCH="master"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="dev-python/lxml[${PYTHON_USEDEP}]
	dev-python/arrow[${PYTHON_USEDEP}]"
BDEPEND="dev-python/setuptools[${PYTHON_USEDEP}]
${RDEPEND}"
DEPEND="${BDEPEND}"
