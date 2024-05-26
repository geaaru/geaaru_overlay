# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="A WSGI HTTP Server for UNIX"
HOMEPAGE="None https://pypi.org/project/gunicorn/"
SRC_URI="https://files.pythonhosted.org/packages/1e/88/e2f93c5738a4c1f56a458fc7a5b1676fc31dcdbb182bef6b40a141c17d66/gunicorn-22.0.0.tar.gz -> gunicorn-22.0.0.tar.gz"

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
S="${WORKDIR}/gunicorn-22.0.0"

src_prepare() {
	sed -e 's:--cov=gunicorn --cov-report=xml::' -i setup.cfg || die
	distutils-r1_src_prepare
}
