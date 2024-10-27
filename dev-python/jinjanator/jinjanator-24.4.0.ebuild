# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="hatchling"
inherit distutils-r1

DESCRIPTION="Command-line interface to Jinja2 for templating in shell scripts."
HOMEPAGE="None https://pypi.org/project/jinjanator/"
SRC_URI="https://files.pythonhosted.org/packages/69/10/165ea54e756fa74f092456cdf77513d1bb6896334408f9b46081ac8e31d0/jinjanator-24.4.0.tar.gz -> jinjanator-24.4.0.tar.gz"

DEPEND="
	!dev-python/j2cli
	$(python_gen_cond_dep 'dev-python/hatch-vcs[${PYTHON_USEDEP}]' -3)"
RDEPEND="
	!dev-python/j2cli
	dev-python/jinja2[${PYTHON_USEDEP}]
	dev-python/pyyaml[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="BSD-2-Clause"
KEYWORDS="*"
S="${WORKDIR}/jinjanator-24.4.0"