# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Updated configparser from stdlib for earlier Pythons."
HOMEPAGE="https://github.com/jaraco/configparser/ https://pypi.org/project/configparser/"
SRC_URI="https://files.pythonhosted.org/packages/fd/1d/a0f55c373f80437607b898956518443b9edd435b5a226392a9ef11d79fa0/configparser-7.0.0.tar.gz -> configparser-7.0.0.tar.gz"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/configparser-7.0.0"