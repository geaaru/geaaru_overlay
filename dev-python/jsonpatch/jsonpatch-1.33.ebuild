# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Apply JSON-Patches (RFC 6902)"
HOMEPAGE="https://github.com/stefankoegl/python-json-patch https://pypi.org/project/jsonpatch/"
SRC_URI="https://files.pythonhosted.org/packages/42/78/18813351fe5d63acad16aec57f94ec2b70a09e53ca98145589e185423873/jsonpatch-1.33.tar.gz -> jsonpatch-1.33.tar.gz"

DEPEND=""
RDEPEND="$(python_gen_cond_dep 'dev-python/jsonpointer[${PYTHON_USEDEP}]' -3)"
IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/jsonpatch-1.33"