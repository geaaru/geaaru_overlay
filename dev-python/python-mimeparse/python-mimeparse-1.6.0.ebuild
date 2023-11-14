# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
DISTUTILS_USE_PEP517="setuptools"

inherit distutils-r1

SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"
DESCRIPTION="Basic functions for handling mime-types in python"
HOMEPAGE="
	https://github.com/falconry/python-mimeparse/
	https://pypi.org/project/python-mimeparse/
"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
