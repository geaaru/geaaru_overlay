# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Command line tool for managing Amazon S3 and CloudFront services"
HOMEPAGE="http://s3tools.org https://pypi.org/project/s3cmd/"
SRC_URI="https://files.pythonhosted.org/packages/b3/9c/ad4cd51328bd7a058bfda6739bc061c63ee3531ad2fbc6e672518a1eed01/s3cmd-2.4.0.tar.gz -> s3cmd-2.4.0.tar.gz"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
RDEPEND="
	dev-python/python-dateutil[${PYTHON_USEDEP}]
	dev-python/python-magic[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="GPLv2"
KEYWORDS="*"
S="${WORKDIR}/s3cmd-2.4.0"

src_prepare() {
	sed -i -e 's|import magic|import python_magic as magic|g' \
		S3/S3.py || die "error on sed S3.py"

	distutils-r1_src_prepare
}
