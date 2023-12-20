# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="High-level interface to Kerberos"
HOMEPAGE="https://github.com/02strich/pykerberos https://pypi.org/project/pykerberos/"
SRC_URI="https://files.pythonhosted.org/packages/07/e9/ae44ea7d7605df9e5ca1ed745a2c5672dc838a8398101051dd5f255b130d/pykerberos-1.2.4.tar.gz -> pykerberos-1.2.4.tar.gz"

DEPEND="
	app-crypt/mit-krb5
	dev-python/setuptools[${PYTHON_USEDEP}]"
RDEPEND="${DEPEND}"
IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/pykerberos-1.2.4"