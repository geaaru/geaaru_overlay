# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Extensions to the standard Python datetime module"
HOMEPAGE="https://github.com/dateutil/dateutil https://pypi.org/project/python-dateutil/"
SRC_URI="https://files.pythonhosted.org/packages/4c/c4/13b4776ea2d76c115c1d1b84579f3764ee6d57204f6be27119f13a61d0a9/python-dateutil-2.8.2.tar.gz -> python-dateutil-2.8.2.tar.gz"

DEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
	dev-python/six[${PYTHON_USEDEP}]
	dev-python/setuptools_scm[${PYTHON_USEDEP}]"
RDEPEND="
	sys-libs/timezone-data
	dev-python/six[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
PATCHES=(
	"$FILESDIR"/0001-zoneinfo-Get-timezone-data-from-system-tzdata.patch
)
S="${WORKDIR}/python-dateutil-2.8.2"

python_prepare_all() {
	# don't install zoneinfo tarball
	sed -i '/package_data=/d' setup.py || die

	distutils-r1_python_prepare_all
}
