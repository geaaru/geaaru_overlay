# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="A comprehensive HTTP client library."
HOMEPAGE="https://github.com/httplib2/httplib2 https://pypi.org/project/httplib2/"
SRC_URI="https://files.pythonhosted.org/packages/3d/ad/2371116b22d616c194aa25ec410c9c6c37f23599dcd590502b74db197584/httplib2-0.22.0.tar.gz -> httplib2-0.22.0.tar.gz"

DEPEND=""
RDEPEND="
	app-misc/ca-certificates
	$(python_gen_cond_dep 'dev-python/pyparsing[${PYTHON_USEDEP}]' -3)"
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
PATCHES=(
	"$FILESDIR"/httplib2-0.12.1-use-system-cacerts.patch
)
S="${WORKDIR}/httplib2-0.22.0"