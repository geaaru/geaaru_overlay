# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="hatchling"
inherit distutils-r1

DESCRIPTION="Package which provides the plugin API for the jinjanator tool"
HOMEPAGE="None https://pypi.org/project/jinjanator-plugins/"
SRC_URI="https://files.pythonhosted.org/packages/07/70/fea92a86919bf3357697289829c1328dd531ad794b317c3de53d0aab6efa/jinjanator_plugins-24.2.0.tar.gz -> jinjanator_plugins-24.2.0.tar.gz"

DEPEND="$(python_gen_cond_dep 'dev-python/hatch-vcs[${PYTHON_USEDEP}]' -3)"
RDEPEND="
	dev-python/attrs[${PYTHON_USEDEP}]
	dev-python/pluggy[${PYTHON_USEDEP}]
	dev-python/typing-extensions[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/jinjanator_plugins-24.2.0"