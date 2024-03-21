# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="PycURL -- A Python Interface To The cURL library"
HOMEPAGE="http://pycurl.io/ https://pypi.org/project/pycurl/"
SRC_URI="https://files.pythonhosted.org/packages/c9/5a/e68b8abbc1102113b7839e708ba04ef4c4b8b8a6da392832bb166d09ea72/pycurl-7.45.3.tar.gz -> pycurl-7.45.3.tar.gz"

DEPEND="
	${RDEPEND}
	dev-python/setuptools[${PYTHON_USEDEP}]"
RDEPEND="
	>=net-misc/curl-7.25.0-r1[ssl=]
	ssl? (
		net-misc/curl[curl_ssl_gnutls(-)=,curl_ssl_nss(-)=,curl_ssl_openssl(-)=,-curl_ssl_axtls(-),-curl_ssl_cyassl(-)]
		curl_ssl_gnutls? ( >=net-libs/gnutls-2.11.0 )
	)"
IUSE="+curl_ssl_openssl curl_ssl_gnutls curl_ssl_nss ssl"
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/pycurl-7.45.3"

python_configure_all() {
	# Override faulty detection in setup.py, bug #510974.
	export PYCURL_SSL_LIBRARY=${CURL_SSL}
}
