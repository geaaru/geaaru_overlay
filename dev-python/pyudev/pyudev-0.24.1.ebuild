# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1 optfeature

DESCRIPTION="A libudev binding"
HOMEPAGE="http://pyudev.readthedocs.org/ https://pypi.org/project/pyudev/"
SRC_URI="https://files.pythonhosted.org/packages/20/b6/16961ac3575575260c72928f17df9c99c2a696871e486965ec6e2fa2aff4/pyudev-0.24.1.tar.gz -> pyudev-0.24.1.tar.gz"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
RDEPEND="virtual/udev"
IUSE="qt5"
SLOT="0"
LICENSE="LGPL-2.1"
KEYWORDS="*"
S="${WORKDIR}/pyudev-0.24.1"

pkg_postinst() {
	optfeature "PyQt5 bindings" "dev-python/PyQt5"
}
