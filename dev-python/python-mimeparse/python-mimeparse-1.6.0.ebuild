# Distributed under the terms of the GNU General Public License v2

EAPI=7

DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=1
PYTHON_COMPAT=( python3+ pypy3 )

inherit distutils-r1

DESCRIPTION="Basic functions for handling mime-types in python"
HOMEPAGE="
	https://github.com/falconry/python-mimeparse/
	https://pypi.org/project/python-mimeparse/
"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
