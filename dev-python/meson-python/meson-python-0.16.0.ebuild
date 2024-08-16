# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="standalone"
inherit distutils-r1

DESCRIPTION="Meson Python build backend (PEP 517)"
HOMEPAGE="https://github.com/mesonbuild/meson-python https://pypi.org/project/meson-python/"
SRC_URI="https://files.pythonhosted.org/packages/1a/3f/b19e9354c358f5acf322dd1f81ed9f0c633ba4bcccfd32e9c3740c43c9e5/meson_python-0.16.0.tar.gz -> meson_python-0.16.0.tar.gz"

DEPEND=""
RDEPEND="
	dev-util/patchelf
	dev-util/meson
	dev-python/pyproject-metadata[${PYTHON_USEDEP}]
	dev-python/tomli[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/meson_python-0.16.0"
