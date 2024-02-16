# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Wrapper for HTML Tidy"
HOMEPAGE="https://cihar.com/software/utidylib/ https://pypi.org/project/uTidylib/"
SRC_URI="https://files.pythonhosted.org/packages/00/86/0b4d2061b28f5e5c2c5213361f20709d1add4fdcda200ba08788f171137f/uTidylib-0.9.tar.gz -> uTidylib-0.9.tar.gz"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
RDEPEND="app-text/htmldity"
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/utidylib-0.9"