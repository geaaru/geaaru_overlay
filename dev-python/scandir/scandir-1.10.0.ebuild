# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="scandir, a better directory iterator and faster os.walk()"
HOMEPAGE="https://github.com/benhoyt/scandir https://pypi.org/project/scandir/"
SRC_URI="https://files.pythonhosted.org/packages/df/f5/9c052db7bd54d0cbf1bc0bb6554362bba1012d03e5888950a4f5c5dadc4e/scandir-1.10.0.tar.gz -> scandir-1.10.0.tar.gz"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="New BSD License"
KEYWORDS="*"
S="${WORKDIR}/scandir-1.10.0"