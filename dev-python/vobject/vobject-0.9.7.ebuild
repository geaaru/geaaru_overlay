# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="A full-featured Python package for parsing and creating iCalendar and vCard files"
HOMEPAGE="http://py-vobject.github.io/vobject/ https://pypi.org/project/vobject/"
SRC_URI="https://files.pythonhosted.org/packages/bf/61/cd63d29d987e5dd8c971571e68c32e4fc365b17155556808c6d99e0fd0c7/vobject-0.9.7.tar.gz -> vobject-0.9.7.tar.gz"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
RDEPEND="dev-python/python-dateutil[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/vobject-0.9.7"