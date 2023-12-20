# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Simple, fast, extensible JSON encoder/decoder for Python"
HOMEPAGE="https://github.com/simplejson/simplejson https://pypi.org/project/simplejson/"
SRC_URI="https://files.pythonhosted.org/packages/79/79/3ccb95bb4154952532f280f7a41979fbfb0fbbaee4d609810ecb01650afa/simplejson-3.19.2.tar.gz -> simplejson-3.19.2.tar.gz"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="|| ( MIT AFL-2.1 )"
KEYWORDS="*"
S="${WORKDIR}/simplejson-3.19.2"