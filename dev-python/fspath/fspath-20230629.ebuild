# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Handling path names and executables more comfortable"
HOMEPAGE="https://github.com/return42/fspath https://pypi.org/project/fspath/"
SRC_URI="https://files.pythonhosted.org/packages/04/e7/5f1fd78115caec76ca456e8e8222fc5a83138dd52dcf923e5f4921df08db/fspath-20230629.tar.gz -> fspath-20230629.tar.gz"

DEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
	dev-python/six[${PYTHON_USEDEP}]
	dev-python/wheel[${PYTHON_USEDEP}]"
RDEPEND="dev-python/six[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="AGPL-3.0"
KEYWORDS="*"
S="${WORKDIR}/fspath-20230629"