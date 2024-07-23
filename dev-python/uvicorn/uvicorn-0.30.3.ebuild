# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="hatchling"
inherit distutils-r1

DESCRIPTION="The lightning-fast ASGI server"
HOMEPAGE="None https://pypi.org/project/uvicorn/"
SRC_URI="https://files.pythonhosted.org/packages/77/40/b650be95700dc83d14c5f2b9eac9deb23cbca757a12ee20e473b5ef1ac48/uvicorn-0.30.3.tar.gz -> uvicorn-0.30.3.tar.gz"

DEPEND="
	dev-python/click[${PYTHON_USEDEP}]
	dev-python/h11[${PYTHON_USEDEP}]
	dev-python/typing_extensions[${PYTHON_USEDEP}]
	$(python_gen_cond_dep 'dev-python/hatch-vcs[${PYTHON_USEDEP}]' -3)"
RDEPEND="
	dev-python/click[${PYTHON_USEDEP}]
	dev-python/h11[${PYTHON_USEDEP}]
	dev-python/typing_extensions[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="BSD-3-Clause"
KEYWORDS="*"
S="${WORKDIR}/uvicorn-0.30.3"