# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Non-blocking MongoDB driver for Tornado or asyncio"
HOMEPAGE="https://github.com/mongodb/motor/ https://pypi.org/project/motor/"
SRC_URI="https://files.pythonhosted.org/packages/fb/f5/7d7aff183c727bf3c69dd487a14bed2eb8603f267354048641df74761e0a/motor-3.0.0.tar.gz
"

DEPEND=""
RDEPEND=">=dev-python/pymongo-4.1[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"

S="${WORKDIR}/motor-3.0.0"