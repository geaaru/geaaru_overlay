# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Heade$

EAPI=6
PYTHON_COMPAT=( python3_{6,7} )

inherit distutils-r1

DESCRIPTION="EAPOL/802.1x implementation"
HOMEPAGE="https://github.com/faucetsdn/chewie"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~arm"
IUSE="test"

# TODO: fix test: require pytype==2018.8.10
COMMON="dev-python/eventlet[${PYTHON_USEDEP}]
	dev-python/transitions[${PYTHON_USEDEP}]"
DEPEND="${COMMON}
	dev-python/setuptools[${PYTHON_USEDEP}]
	>=dev-python/pbr-1.9[${PYTHON_USEDEP}]
	test? ( dev-python/pylint[${PYTHON_USEDEP}]
		dev-python/coverage[${PYTHON_USEDEP}]
		dev-python/pytest-cov[${PYTHON_USEDEP}]
	)
"
RDEPEND="${COMMON}"
