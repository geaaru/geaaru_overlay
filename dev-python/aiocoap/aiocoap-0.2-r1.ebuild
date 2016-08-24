# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5
PYTHON_COMPAT=( python3_4 python3_5)

inherit distutils-r1 git-2

DESCRIPTION="Python CoAP library"
HOMEPAGE="https://pypi.python.org/pypi/aiocoap"

EGIT_PROJECT="aiocoap"
EGIT_REPO_URI="https://github.com/chrysn/aiocoap.git"
# Commit of Aug 23 (geaaru), 2016
EGIT_COMMIT="c988e8b"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="doc "

DEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
"

RDEPEND="
"

src_prepare() {
	# remove tests directory
	rm -rf ${S}/tests || die

	distutils-r1_src_prepare
}
