# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Sphinx-doc extensions for sophisticated C developer"
HOMEPAGE="https://github.com/return42/linuxdoc https://pypi.org/project/linuxdoc/"
SRC_URI="https://files.pythonhosted.org/packages/1f/f9/c26d1d23856b222f55d7bcb4b8a4436c4f4fc771b39b8e6668fd2f2cdfc5/linuxdoc-20231020.tar.gz -> linuxdoc-20231020.tar.gz"

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
S="${WORKDIR}/linuxdoc-20231020"