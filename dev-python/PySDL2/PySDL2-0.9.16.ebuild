# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Python SDL2 bindings"
HOMEPAGE="https://github.com/py-sdl/py-sdl2 https://pypi.org/project/PySDL2/"
SRC_URI="https://files.pythonhosted.org/packages/63/ae/f40e4c4738fb39ce140950ed7d9bc21358826416d91a5426a190c612f789/PySDL2-0.9.16.tar.gz -> PySDL2-0.9.16.tar.gz"

DEPEND="
	${RDEPEND}
	dev-python/setuptools[${PYTHON_USEDEP}]"
RDEPEND="
	media-libs/libsdl2"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/PySDL2-0.9.16"