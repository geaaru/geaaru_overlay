# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Updated configparser from stdlib for earlier Pythons."
HOMEPAGE="https://github.com/jaraco/configparser/ https://pypi.org/project/configparser/"
SRC_URI="https://files.pythonhosted.org/packages/0b/65/bad3eb64f30657ee9fa2e00e80b3ad42037db5eb534fadd15a94a11fe979/configparser-6.0.0.tar.gz -> configparser-6.0.0.tar.gz"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/configparser-6.0.0"