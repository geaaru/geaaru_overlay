# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="A WSGI HTTP Server for UNIX"
HOMEPAGE="https://gunicorn.org https://pypi.org/project/gunicorn/"
SRC_URI="https://files.pythonhosted.org/packages/06/89/acd9879fa6a5309b4bf16a5a8855f1e58f26d38e0c18ede9b3a70996b021/gunicorn-21.2.0.tar.gz -> gunicorn-21.2.0.tar.gz"

DEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
	dev-python/packaging[${PYTHON_USEDEP}]"
RDEPEND="
	dev-python/packaging[${PYTHON_USEDEP}]
	dev-python/setproctitle[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="MIT PSF-2"
KEYWORDS="*"
S="${WORKDIR}/gunicorn-21.2.0"

src_prepare() {
	sed -e 's:--cov=gunicorn --cov-report=xml::' -i setup.cfg || die
	distutils-r1_src_prepare
}
