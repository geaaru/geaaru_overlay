# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="A featureful, immutable, and correct URL for Python."
HOMEPAGE="https://github.com/python-hyper/hyperlink https://pypi.org/project/hyperlink/"
SRC_URI="https://files.pythonhosted.org/packages/3a/51/1947bd81d75af87e3bb9e34593a4cf118115a8feb451ce7a69044ef1412e/hyperlink-21.0.0.tar.gz -> hyperlink-21.0.0.tar.gz"

DEPEND=""
RDEPEND="$(python_gen_cond_dep 'dev-python/idna[${PYTHON_USEDEP}]' -3)"
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/hyperlink-21.0.0"