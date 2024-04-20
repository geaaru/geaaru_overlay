# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Functions for fast computation of Levenshtein distance, and edit operations"
HOMEPAGE="https://github.com/rapidfuzz/python-Levenshtein https://pypi.org/project/python-Levenshtein/"
SRC_URI="https://files.pythonhosted.org/packages/72/09/fa674fdab63266fdc0ff5d4ab88e0ad3c135185500b76bfd1e1977b679cb/python-Levenshtein-0.25.1.tar.gz -> python-Levenshtein-0.25.1.tar.gz"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="GPL-2"
KEYWORDS="*"
S="${WORKDIR}/python-levenshtein-0.25.1"

post_src_unpack() {
	mv python-* "${S}"
}
