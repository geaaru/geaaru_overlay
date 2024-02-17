# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Functions for fast computation of Levenshtein distance, and edit operations"
HOMEPAGE="https://github.com/rapidfuzz/python-Levenshtein https://pypi.org/project/python-Levenshtein/"
SRC_URI="https://files.pythonhosted.org/packages/ff/61/62a9635ea2b2ad709bec287469fb87a6641e278319a83d3a4d38f5460657/python-Levenshtein-0.25.0.tar.gz -> python-Levenshtein-0.25.0.tar.gz"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="GPL-2"
KEYWORDS="*"
S="${WORKDIR}/python-levenshtein-0.25.0"

post_src_unpack() {
	mv python-* "${S}"
}
