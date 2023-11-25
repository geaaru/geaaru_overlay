# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Symbolic constants in Python"
HOMEPAGE=" https://pypi.org/project/constantly/"
SRC_URI="https://files.pythonhosted.org/packages/4d/6f/cb2a94494ff74aa9528a36c5b1422756330a75a8367bf20bd63171fc324d/constantly-23.10.4.tar.gz -> constantly-23.10.4.tar.gz"

DEPEND="$(python_gen_cond_dep 'dev-python/setuptools[${PYTHON_USEDEP}] dev-python/versioneer[${PYTHON_USEDEP}]' -3)"
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/constantly-23.10.4"