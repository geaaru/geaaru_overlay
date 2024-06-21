# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1 optfeature

DESCRIPTION="A libudev binding"
HOMEPAGE="http://github.com/pyudev/pyudev https://pypi.org/project/pyudev/"
SRC_URI="https://files.pythonhosted.org/packages/c4/5c/6cc034da13830e3da123ccf9a30910bc868fa16670362f004e4b788d0df1/pyudev-0.24.3.tar.gz -> pyudev-0.24.3.tar.gz"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
RDEPEND="virtual/udev"
IUSE="qt5"
SLOT="0"
LICENSE="LGPL-2.1"
KEYWORDS="*"
S="${WORKDIR}/pyudev-0.24.3"

pkg_postinst() {
	optfeature "PyQt5 bindings" "dev-python/PyQt5"
}
