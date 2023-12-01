# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="A module provides basic functions for parsing mime-type names and matching them against a list of media-ranges."
HOMEPAGE="https://github.com/dbtsai/python-mimeparse https://pypi.org/project/python-mimeparse/"
SRC_URI="https://files.pythonhosted.org/packages/0f/40/ac5f9e44a55b678c3cd881b4c3376e5b002677dbeab6fb3a50bac5d50d29/python-mimeparse-1.6.0.tar.gz -> python-mimeparse-1.6.0.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/python-mimeparse-1.6.0"