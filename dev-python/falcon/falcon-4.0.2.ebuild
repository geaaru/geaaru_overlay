# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="The ultra-reliable, fast ASGI+WSGI framework for building data plane APIs at scale."
HOMEPAGE="https://falconframework.org"
SRC_URI="https://files.pythonhosted.org/packages/37/4f/d317952294dee1982cd930c8ee2b8b7fbf04140473882801061b3346c713/falcon-4.0.2.tar.gz -> falcon-4.0.2.tar.gz
"
BDEPEND="
	dev-python/wheel[${PYTHON_USEDEP}]
	dev-python/cython[${PYTHON_USEDEP}]
"

IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/falcon-4.0.2"
