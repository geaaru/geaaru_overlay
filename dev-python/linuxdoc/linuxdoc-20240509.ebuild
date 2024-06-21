# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Sphinx-doc extensions for sophisticated C developer"
HOMEPAGE="https://github.com/return42/linuxdoc https://pypi.org/project/linuxdoc/"
SRC_URI="https://files.pythonhosted.org/packages/bb/8e/258004168161995e0d12d221e46f4aa9549416d0fc94844d4a11db148136/linuxdoc-20240509.tar.gz -> linuxdoc-20240509.tar.gz"

DEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
	dev-python/fspath[${PYTHON_USEDEP}]
	dev-python/sphinx[${PYTHON_USEDEP}]
	dev-python/wheel[${PYTHON_USEDEP}]
	dev-python/docutils[${PYTHON_USEDEP}]"
RDEPEND="
	dev-python/fspath[${PYTHON_USEDEP}]
	dev-python/sphinx[${PYTHON_USEDEP}]
	dev-python/docutils[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="AGPL-3.0"
KEYWORDS="*"
S="${WORKDIR}/linuxdoc-20240509"