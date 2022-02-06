# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=7
PYTHON_COMPAT=( python{2_7,3_3,3_4,3_5} )
inherit distutils-r1

DESCRIPTION="Python client for Neovim"
HOMEPAGE="https://github.com/neovim/python-gui"

MY_PN="${PN/-/_}"
MY_P="${MY_PN}-${PV}"

SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${MY_P}.tar.gz"
#SRC_URI="https://github.com/neovim/python-gui/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND="
	>=dev-python/click-3.0[${PYTHON_USEDEP}]
	dev-python/pygobject[${PYTHON_USEDEP}]
"

RDEPEND="
	${DEPEND}
	>=app-editors/neovim-0.1.3
"
S="${WORKDIR}/${MY_P}"
